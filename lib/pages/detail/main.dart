import 'package:flutter/material.dart';
import 'package:food_view/blocs/favorite_bloc/favorite_bloc.dart';
import 'package:food_view/pages/detail/widgets/detail.dart';
import 'package:food_view/pages/detail/widgets/toolbar.dart';
import 'package:food_view/style/color.dart';

class detailPage extends StatefulWidget {
  final String mealId,
      mealImage,
      mealName,
      mealCategory,
      mealTag,
      mealInstruction;

  detailPage(this.mealId, this.mealImage, this.mealName, this.mealCategory,
      this.mealTag, this.mealInstruction,
      {Key? key})
      : super(key: key);

  @override
  State<detailPage> createState() => _detailPageState();
}

class _detailPageState extends State<detailPage> {
  CheckFavoritBloc bloc = CheckFavoritBloc();
  FavoriteBloc fBloc = FavoriteBloc();

  @override
  void initState() {
    super.initState();
    bloc.sinkInputType.add(widget.mealId);
  }

  @override
  void dispose() {
    super.dispose();
    fBloc.sinkInput.add(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellow,
      body: Column(
        children: [
          toolBar(
            context,
            bloc,
            fBloc,
            widget.mealId,
            widget.mealImage,
            widget.mealName,
            widget.mealCategory,
            widget.mealTag,
            widget.mealInstruction,
          ),
          detailData(
            context,
            widget.mealId,
            widget.mealImage,
            widget.mealName,
            widget.mealCategory,
            widget.mealTag,
            widget.mealInstruction,
          ),
        ],
      ),
    );
  }
}
