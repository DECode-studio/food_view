import 'package:flutter/material.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellow,
      body: Column(
        children: [
          toolBar(context),
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
