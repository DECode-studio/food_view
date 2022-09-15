import 'package:flutter/material.dart';
import 'package:food_view/pages/detail/main.dart';
import 'package:food_view/service/navigation.dart';
import 'package:food_view/style/text.dart';

import '../../../style/color.dart';

Widget cardFood(
  BuildContext context,
  String mealId,
  String mealImage,
  String mealName,
  String mealCategory,
  String mealTag,
  String mealInstruction,
) {
  return Column(
    children: [
      SizedBox(
        height: 150,
        child: GestureDetector(
          onTap: () {
            Get().to(
              context,
              detailPage(
                mealId,
                mealImage,
                mealName,
                mealCategory,
                mealTag,
                mealInstruction,
              ),
            );
          },
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: double.infinity,
                  height: 150,
                  margin: const EdgeInsets.only(left: 60),
                  padding: const EdgeInsets.only(
                    left: 80,
                    top: 20,
                    bottom: 20,
                    right: 20,
                  ),
                  decoration: BoxDecoration(
                    color: yellow,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: black,
                      width: 2,
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        mealName,
                        style: widgetText,
                      ),
                      const Spacer(),
                      Text("Category : ${mealCategory}"),
                      Text("Tags        : ${mealTag}"),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(
                      color: black,
                      width: 2,
                    ),
                    image: DecorationImage(
                      image: NetworkImage(mealImage),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
    ],
  );
}
