import 'package:flutter/material.dart';
import 'package:food_view/pages/splash/main.dart';

void main() => runApp(FoodView());

class FoodView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food View',
      debugShowCheckedModeBanner: false,
      home: splashPage(),
    );
  }
}
