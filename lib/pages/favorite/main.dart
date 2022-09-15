import 'package:flutter/material.dart';
import 'package:food_view/pages/favorite/widgets/header.dart';
import 'package:food_view/pages/favorite/widgets/list.dart';
import 'package:food_view/style/text.dart';

import '../../style/color.dart';

class favoritePage extends StatefulWidget {
  favoritePage({Key? key}) : super(key: key);

  @override
  State<favoritePage> createState() => _favoritePageState();
}

class _favoritePageState extends State<favoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellow,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerFavorite(),
          listFavorite(context),
        ],
      ),
    );
  }
}
