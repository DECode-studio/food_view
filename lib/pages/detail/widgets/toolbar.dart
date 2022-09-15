import 'package:flutter/material.dart';
import 'package:food_view/dao/favorite_dao.dart';
import 'package:food_view/service/navigation.dart';
import 'package:food_view/style/color.dart';
import 'package:food_view/style/text.dart';
import 'package:food_view/widgets/toast.dart';

import '../../../blocs/favorite_bloc/favorite_bloc.dart';

Widget toolBar(
  BuildContext context,
  CheckFavoritBloc bloc,
  FavoriteBloc fBloc,
  String mealId,
  String mealImage,
  String mealName,
  String mealCategory,
  String mealTag,
  String mealInstruction,
) {
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
        StreamBuilder(
          stream: bloc.output,
          builder: (context, snapshot) {
            return GestureDetector(
              onTap: () {
                if (bloc.inputType == false) {
                  FavoriteDao.createItem(
                    mealId,
                    mealImage,
                    mealName,
                    mealCategory,
                    mealTag,
                    mealInstruction,
                  ).then((value) {
                    if (value == "Success") {
                      toast(
                          context, "$mealName has been added to Your Favorite");
                      bloc.sinkInputType.add(mealId);
                      fBloc.sinkInput.add(0);
                    } else {
                      toast(context,
                          "$mealName fail to be added to Your Favorite:\n$value");
                    }
                  });
                } else {
                  FavoriteDao.deleteItem(mealId).then((value) {
                    if (value == "Success") {
                      toast(context,
                          "$mealName has been deleted from Your Favorite");
                      bloc.sinkInputType.add(mealId);
                      fBloc.sinkInput.add(0);
                    } else {
                      toast(context,
                          "$mealName fail to be deleted from Your Favorite:\n$value");
                    }
                  });
                }
              },
              child: CircleAvatar(
                backgroundColor: white,
                radius: 20,
                child: Icon(
                  bloc.inputType == true
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: red,
                ),
              ),
            );
          },
        ),
      ],
    ),
  );
}
