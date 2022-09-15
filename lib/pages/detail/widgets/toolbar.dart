import 'package:flutter/material.dart';
import 'package:food_view/service/navigation.dart';
import 'package:food_view/style/color.dart';
import 'package:food_view/style/text.dart';

Widget toolBar(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.only(
      top: 50,
      left: 25,
      right: 25,
      bottom: 25,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Get().back(context);
          },
          child: CircleAvatar(
            backgroundColor: black,
            radius: 20,
            child: Icon(
              Icons.arrow_back,
              color: white,
            ),
          ),
        ),
        Text(
          'Food Details',
          style: widgetText,
        ),
        CircleAvatar(
          backgroundColor: white,
          radius: 20,
          child: Icon(
            Icons.favorite,
            color: red,
          ),
        ),
      ],
    ),
  );
}
