import 'package:flutter/material.dart';
import 'package:food_view/style/color.dart';
import 'package:food_view/style/text.dart';

Widget cardCategory(String categoryName, String categoryImage) {
  return Column(
    children: [
      Container(
        height: 65,
        width: 65,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: yellow,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: black,
            width: 2,
          ),
        ),
        child: Image.network(categoryImage),
      ),
      const SizedBox(
        height: 5,
      ),
      Text(
        categoryName,
        style: categoryText,
      ),
    ],
  );
}
