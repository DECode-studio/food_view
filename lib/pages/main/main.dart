import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_view/blocs/main_bloc/screen.dart';
import 'package:food_view/pages/home/main.dart';
import 'package:food_view/pages/main/widgets/navigation.dart';
import 'package:food_view/style/color.dart';

class mainPage extends StatefulWidget {
  mainPage({Key? key}) : super(key: key);

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  int navIndex = 0;

  ChangeScreenBloc bloc = ChangeScreenBloc();

  @override
  void initState() {
    super.initState();

    if (defaultTargetPlatform == TargetPlatform.android) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          systemNavigationBarColor: white,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: bloc.output,
        builder: (context, snapshot) {
          return Scaffold(
            backgroundColor: white,
            body: SafeArea(
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: homePage(),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: bottomNavigation(context, bloc),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
