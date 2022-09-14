import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_view/blocs/list_bloc/food_bloc.dart';
import 'package:food_view/pages/home/widgets/card-food.dart';

import '../../../models/food_model.dart';
import '../../../widgets/load.dart';
import '../../../widgets/toast.dart';

Widget buildListFood(FoodBloc foodBloc) {
  return BlocProvider(
    create: (_) => foodBloc,
    child: BlocListener<FoodBloc, FoodState>(
      listener: (context, state) {
        if (state is FoodError) {
          toast(context, state.message!);
        }
      },
      child: BlocBuilder<FoodBloc, FoodState>(
        builder: (context, state) {
          if (state is FoodInitial) {
            return buildLoading();
          } else if (state is FoodLoading) {
            return buildLoading();
          } else if (state is FoodLoaded) {
            return _buildCard(context, state.foodModel);
          } else if (state is FoodError) {
            return Container();
          } else {
            return Container();
          }
        },
      ),
    ),
  );
}

Widget _buildCard(BuildContext context, FoodModel model) {
  return Expanded(
    child: ListView.builder(
      itemCount: model.foods!.length,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return cardFood(
          model.foods![index].idMeal.toString(),
          model.foods![index].strMealThumb.toString(),
          model.foods![index].strMeal.toString(),
          model.foods![index].strCategory.toString(),
          model.foods![index].strTags.toString(),
        );
      },
    ),
  );
}
