import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_view/blocs/main_bloc/screen.dart';

import '../../../style/color.dart';

Widget bottomNavigation(BuildContext context, ChangeScreenBloc bloc) {
  return DotNavigationBar(
    currentIndex: bloc.navIndex,
    backgroundColor: black,
    selectedItemColor: yellow,
    unselectedItemColor: white,
    onTap: (value) {
      bloc.sinkInputChange.add(value);
    },
    items: [
      DotNavigationBarItem(
        icon: const Icon(Icons.home),
      ),
      DotNavigationBarItem(
        icon: const Icon(Icons.favorite_border),
      ),
    ],
  );
}
