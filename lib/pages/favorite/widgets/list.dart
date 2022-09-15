import 'package:flutter/material.dart';
import 'package:food_view/blocs/favorite_bloc/favorite_bloc.dart';
import 'package:food_view/dao/favorite_dao.dart';
import 'package:food_view/pages/favorite/widgets/card-food.dart';
import 'package:food_view/widgets/load.dart';

import '../../../style/color.dart';

Widget listFavorite(BuildContext context, FavoriteBloc fBloc) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height - 145,
    padding: const EdgeInsets.only(
      top: 40,
      left: 25,
      right: 25,
    ),
    decoration: BoxDecoration(
      color: white,
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(40),
        topLeft: Radius.circular(40),
      ),
    ),
    child: listData(context, fBloc),
  );
}

Widget listData(BuildContext context, FavoriteBloc fBloc) {
  return StreamBuilder(
    stream: fBloc.output,
    builder: (context, snapshot) {
      return ListView.builder(
        itemCount: fBloc.favoritData.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return cardFood(
            context,
            fBloc.favoritData[index]['mealId'],
            fBloc.favoritData[index]['mealImage'],
            fBloc.favoritData[index]['mealName'],
            fBloc.favoritData[index]['mealCategory'],
            fBloc.favoritData[index]['mealTag'],
            fBloc.favoritData[index]['mealInstruction'],
          );
        },
      );
    },
  );
}
