import 'package:flutter/material.dart';
import 'package:food_view/style/color.dart';
import 'package:food_view/style/text.dart';

import '../../../widgets/assets.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: yellow,
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            imageLogo(132, 132),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Food View",
              style: navText,
            )
          ],
        ),
      ),
    );
  }
}
