import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:news_app/helpers/Api.dart';
import 'package:news_app/models/article_model.dart';

class NewsService {
  Future<List<ArticleModel>> getTopHeadLines() async {
    try {
      Map<String, dynamic> data = await Api().get(
        url:
            'https://gnews.io/api/v4/top-headlines?category=general&country=us&apikey=97b7496f5825eca8b8d3220dcde143c3',
      );
      List<ArticleModel> articlesList = [];

      for (int i = 0; i < data['articles'].length; i++) {
        // kda bakhod kol map gaya fe el List response w ba7otaha fe el list productList 3n tarek el factor constructor
        articlesList.add(ArticleModel.fromJson(data['articles'][i]));
      }
      return articlesList;
    } catch (e) {
      log(e.toString());
      return [];
    }
  }
}
