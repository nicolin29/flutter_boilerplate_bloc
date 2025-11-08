import 'package:flutter/material.dart';

class ArticlePage extends StatefulWidget {
  static const String routePath = '/article';
  const ArticlePage({super.key});

  @override
  State<ArticlePage> createState() => _ArticlePageState();
}

class _ArticlePageState extends State<ArticlePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Articles')),
      body: const Center(child: Text('Article Page Content')),
    );
  }
}
