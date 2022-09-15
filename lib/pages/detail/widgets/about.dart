import 'package:flutter/cupertino.dart';
import 'package:food_view/style/text.dart';

Widget aboutFood(
  String mealName,
  String mealCategory,
  String mealTag,
  String mealInstruction,
) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        mealName,
        style: navText,
      ),
      const SizedBox(
        height: 20,
      ),
      Expanded(
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            Text(
              mealInstruction,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 10,
            ),
            Text("Category : \n $mealCategory"),
            const SizedBox(
              height: 10,
            ),
            Text("Tags : \n $mealTag")
          ],
        ),
      )
    ],
  );
}
