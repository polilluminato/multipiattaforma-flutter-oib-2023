import 'package:flutter_oib_2023/models/article.dart';
import 'package:flutter_oib_2023/repository/news_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'article_provider.g.dart';

@riverpod
Future<List<Article>?> articleList(ArticleListRef ref) async {
  return NewsRepository().getArticleList();
}
