import 'package:application_gia_pha/constants.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kPrimaryLightColor,
    fontFamily: "Muli",
    appBarTheme: const AppBarTheme(
      color: kPrimaryColor,
      elevation: 0,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: textTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyLarge: TextStyle(color: kText1Color),
    bodyMedium: TextStyle(color: kText2Color),
  );
}
