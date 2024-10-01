import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsCard extends StatelessWidget {
  ArticleModel articleModel;
  NewsCard({required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: Image.network(
              articleModel.image,
              fit: BoxFit.cover,
            ),
          ),
          Text(articleModel.title),
          Text(
            articleModel.content,
            style: TextStyle(color: Colors.grey),
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
