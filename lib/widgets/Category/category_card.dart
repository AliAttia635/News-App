import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  CategoryModel categorieModel;
  CategoryCard({required this.categorieModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              categorieModel.image,
              fit: BoxFit.cover,
              width: 150,
              height: 110,
            ),
          ),
          Text(
            categorieModel.title,
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
        ],
      ),
    );
  }
}
