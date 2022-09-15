import 'package:flutter/material.dart';

import '../../../style/text.dart';

Widget headerFavorite() {
  return Padding(
    padding: const EdgeInsets.only(
      top: 25,
      right: 25,
      left: 25,
      bottom: 30,
    ),
    child: Text(
      "Food View.\nYour Favorite Receipes",
      style: navText,
    ),
  );
}
