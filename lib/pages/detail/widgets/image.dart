import 'package:flutter/material.dart';

import '../../../style/color.dart';

Widget foodImage(String mealImage) {
  return Container(
    height: 250,
    width: 250,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(500),
      border: Border.all(
        color: black,
        width: 2,
      ),
      image: DecorationImage(
        image: NetworkImage(mealImage),
      ),
    ),
  );
}
