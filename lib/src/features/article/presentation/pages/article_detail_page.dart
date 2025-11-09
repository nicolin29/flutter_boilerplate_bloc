import 'package:flutter/material.dart';

class ArticleDetailPage extends StatefulWidget {
  static const routePath = '/article-detail/:id';

  final int articleId;

  const ArticleDetailPage({super.key, required this.articleId});

  @override
  State<ArticleDetailPage> createState() => _ArticleDetailPageState();
}

class _ArticleDetailPageState extends State<ArticleDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Article Detail')),
      body: Center(
        child: Text('Displaying details for article ID: ${widget.articleId}'),
      ),
    );
  }
}
