import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_view/pages/main/main.dart';
import 'package:food_view/pages/splash/widgets/screen.dart';
import 'package:food_view/service/navigation.dart';
import 'package:food_view/style/color.dart';

class splashPage extends StatefulWidget {
  splashPage({Key? key}) : super(key: key);

  @override
  State<splashPage> createState() => _splashPageState();
}

class _splashPageState extends State<splashPage> {
  @override
  void initState() {
    super.initState();

    if (defaultTargetPlatform == TargetPlatform.android) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          systemNavigationBarColor: yellow,
          systemNavigationBarIconBrightness: Brightness.light,
        ),
      );
    }

    Timer(
      const Duration(seconds: 5),
      () => Get().push(context, mainPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}
