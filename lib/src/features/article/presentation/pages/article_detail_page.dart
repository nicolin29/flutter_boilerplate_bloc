import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_boilerplate/src/core/extensions/context_extension.dart';
import 'package:flutter_boilerplate/src/features/article/presentation/cubit/article_detail_cubit/article_detail_cubit.dart';
import 'package:flutter_boilerplate/src/features/article/presentation/cubit/article_detail_cubit/article_detail_state.dart';

class ArticleDetailPage extends StatefulWidget {
  static const routePath = '/article-detail/:id';

  final int articleId;

  const ArticleDetailPage({super.key, required this.articleId});

  @override
  State<ArticleDetailPage> createState() => _ArticleDetailPageState();
}

class _ArticleDetailPageState extends State<ArticleDetailPage> {
  @override
  void initState() {
    super.initState();
    context.read<ArticleDetailCubit>().fetchArticleDetail(widget.articleId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Article Detail')),
      body: BlocBuilder<ArticleDetailCubit, ArticleDetailState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (article) => SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(article.title ?? '-', style: context.text.bodyMedium),
                  const SizedBox(height: 16),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      article.image ?? '',
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            error: (message) => Center(child: Text(message)),
          );
        },
      ),
    );
  }
}
