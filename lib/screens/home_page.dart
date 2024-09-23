import 'package:flutter/material.dart';
import 'package:news_app/widgets/Category/category_list_view.dart';
import 'package:news_app/widgets/custom_text_field.dart';
import 'package:news_app/widgets/Articles/news_list_view.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "News",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Cloud",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.orange),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CustomTextField(
                hint: 'search',
              ),
            ),
            const SliverToBoxAdapter(
              child: CategoryListView(),
            ),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 30,
              ),
            ),
            SliverToBoxAdapter(
              child: NewsListView(),
            ),
          ],
        ),
      ),

      // Column(
      //   children: [
      //     Padding(
      //       padding: const EdgeInsets.all(12.0),
      //       child: CustomTextField(
      //         hint: 'Search',
      //       ),
      //     ),
      //     Expanded(child: CategoryListView()),
      //     Expanded(child: NewsCard()),
      //   ],
      // ),
    );
  }
}
