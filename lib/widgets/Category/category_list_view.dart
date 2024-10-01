import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/Category/category_card.dart';

final List<CategoryModel> categories = [
  CategoryModel(title: "Bussiness", image: "assets/images/business.avif"),
  CategoryModel(
      title: "entertainment", image: "assets/images/entertaiment.avif"),
  CategoryModel(title: "general", image: "assets/images/general.avif"),
  CategoryModel(title: "health", image: "assets/images/health.avif"),
  CategoryModel(title: "science", image: "assets/images/science.avif"),
  CategoryModel(title: "sports", image: "assets/images/sports.avif"),
  CategoryModel(title: "technology", image: "assets/images/technology.jpeg"),
];

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Container(
        height: 110,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 7,
          itemBuilder: (context, index) {
            return CategoryCard(
              categorieModel: categories[index],
            );
          },
        ),
      ),
    );
  }
}
