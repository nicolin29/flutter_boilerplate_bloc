import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/src/features/article/data/models/article_model.dart';
import 'package:flutter_boilerplate/src/features/article/presentation/cubit/article_list_cubit/article_list_cubit.dart';
import 'package:flutter_boilerplate/src/features/article/presentation/cubit/article_list_cubit/article_list_state.dart';
import 'package:go_router/go_router.dart';

class ArticleListPage extends StatefulWidget {
  static const String routePath = '/article-list';
  const ArticleListPage({super.key});

  @override
  State<ArticleListPage> createState() => _ArticleListPageState();
}

class _ArticleListPageState extends State<ArticleListPage> {
  final ScrollController _scrollController = ScrollController();
  late ArticleListCubit _cubit;

  @override
  void initState() {
    super.initState();
    _cubit = context.read<ArticleListCubit>();
    _cubit.fetchFirstPage(); // initial load

    _scrollController.addListener(() {
      // when user scrolls near the bottom, fetch more
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent - 200) {
        _cubit.fetchNextPage();
      }
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Articles')),
      body: BlocBuilder<ArticleListCubit, ArticleListState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: (articles, hasMore) =>
                _buildList(context, articles, hasMore, isLoading: true),
            success: (articles, hasMore) =>
                _buildList(context, articles, hasMore, isLoading: false),
            error: (message) => _buildError(context, message),
          );
        },
      ),
    );
  }

  Widget _buildList(
    BuildContext context,
    List<ArticleModel> articles,
    bool hasMore, {
    required bool isLoading,
  }) {
    if (articles.isEmpty && isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (articles.isEmpty) {
      return const Center(child: Text('No articles found.'));
    }

    return RefreshIndicator(
      onRefresh: () => _cubit.refresh(),
      child: ListView.builder(
        controller: _scrollController,
        itemCount: hasMore ? articles.length + 1 : articles.length,
        itemBuilder: (context, index) {
          if (index >= articles.length) {
            return const Padding(
              padding: EdgeInsets.all(16.0),
              child: Center(child: CircularProgressIndicator()),
            );
          }

          final article = articles[index];
          return _buildArticleItem(context, article);
        },
      ),
    );
  }

  Widget _buildArticleItem(BuildContext context, ArticleModel article) {
    return ListTile(
      title: Text(
        article.title ?? '-',
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        article.image ?? '',
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      onTap: () {
        // Navigate to detail page (if exists)
        context.go('/article-detail/${article.id}');
      },
    );
  }

  Widget _buildError(BuildContext context, String message) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Error: $message'),
          const SizedBox(height: 8),
          ElevatedButton(
            onPressed: () => context.read<ArticleListCubit>().refresh(),
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }
}
