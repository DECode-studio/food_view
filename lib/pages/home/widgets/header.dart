import 'package:flutter/material.dart';
import 'package:food_view/models/category_model.dart';
import 'package:food_view/style/text.dart';
import 'card-category.dart';

Widget headerApp() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Food View.\nDelicious Receipes.',
        style: navText,
      ),
      const SizedBox(
        height: 30,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          children: [
            for (var i = 0; i < categoriesData.length; i++)
              Row(
                children: [
                  cardCategory(
                    categoriesData[i]['strCategory'],
                    categoriesData[i]['strCategoryThumb'],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
          ],
        ),
      ),
    ],
  );
}
