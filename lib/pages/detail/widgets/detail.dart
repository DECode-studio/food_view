import 'package:flutter/material.dart';
import 'package:food_view/pages/detail/widgets/about.dart';
import 'package:food_view/pages/detail/widgets/image.dart';
import 'package:food_view/style/color.dart';

Widget detailData(
  BuildContext context,
  String mealId,
  String mealImage,
  String mealName,
  String mealCategory,
  String mealTag,
  String mealInstruction,
) {
  return Container(
    height: MediaQuery.of(context).size.height - 115,
    child: Stack(
      children: [
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 240,
            padding: const EdgeInsets.only(
              top: 165,
              left: 40,
              right: 40,
            ),
            decoration: BoxDecoration(
              color: white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
            ),
            child: aboutFood(
              mealName,
              mealCategory,
              mealTag,
              mealInstruction,
            ),
          ),
        ),
        Align(
          alignment: Alignment.topCenter,
          child: foodImage(mealImage),
        )
      ],
    ),
  );
}
