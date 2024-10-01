import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/Articles/news_card.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({super.key});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  var future;
  @override
  void initState() {
    super.initState();
    // future = NewsService(Dio()).getTopHeadlines(category: widget.category);
    // future = NewsService().getTopHeadLines();
    dynamic getAllArticles() async {
      var articlesList = await NewsService().getTopHeadLines();
      return articlesList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: NewsService().getTopHeadLines(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<ArticleModel> articlesList = snapshot.data!;
            return SizedBox(
              height: 550,
              child: ListView.builder(
                itemCount: articlesList.length,
                itemBuilder: (context, index) {
                  return NewsCard(
                    articleModel: articlesList[index],
                  );
                },
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }
}
