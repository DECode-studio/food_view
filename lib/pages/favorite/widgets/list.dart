import 'package:flutter/material.dart';

import '../../../style/color.dart';

Widget listFavorite(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height - 145,
    padding: const EdgeInsets.only(
      top: 40,
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
  );
}

Widget listData(BuildContext context) {}
