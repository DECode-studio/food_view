import 'package:flutter/material.dart';
import 'package:food_view/blocs/list_bloc/food_bloc.dart';
import 'package:food_view/pages/home/widgets/header.dart';
import 'package:food_view/style/color.dart';
import 'package:food_view/style/text.dart';

import 'widgets/list.dart';

class homePage extends StatefulWidget {
  homePage({Key? key}) : super(key: key);

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  final FoodBloc foodBloc = FoodBloc();

  @override
  void initState() {
    super.initState();

    foodBloc.add(GetFoodList());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 25,
          right: 25,
          left: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            headerApp(),
            const SizedBox(
              height: 30,
            ),
            Text(
              "Popular",
              style: navText,
            ),
            const SizedBox(
              height: 20,
            ),
            buildListFood(foodBloc),
          ],
        ),
      ),
    );
  }
}
