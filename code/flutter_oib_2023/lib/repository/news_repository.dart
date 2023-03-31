import 'dart:convert';

import 'package:flutter_oib_2023/env/env.dart';
import 'package:flutter_oib_2023/models/article.dart';
import 'package:http/http.dart' as http;

class NewsRepository {
  NewsRepository();

  Future<List<Article>?> getArticleList() async {
    var response = await http.get(
      Uri.parse(
          "${Env.newsApiUrl}/top-headlines?country=it&category=technology"),
      headers: {
        'Content-Type': 'application/json',
        'X-Api-Key': Env.newsApiKey,
      },
    );

    final responseBodyParsed = json.decode(response.body);

    return responseBodyParsed["articles"]
        .map<Article>((json) => Article.fromJson(json))
        .toList();
  }
}
