import 'package:flutter/material.dart';
import 'package:news_app/widgets/Articles/news_card.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 550,
      child: ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          return NewsCard();
        },
      ),
    );
  }
}
