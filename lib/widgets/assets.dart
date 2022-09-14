import 'package:flutter/material.dart';

String logo = "assets/logo/logo_app.png";

Widget imageLogo(double height, double width) {
  return Image.asset(
    logo,
    height: height,
    width: width,
  );
}
