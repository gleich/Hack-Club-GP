// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class Themes {
  // Shared Values
  final primaryColor = Color.fromRGBO(236, 55, 80, 1);

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(35, 37, 40, 1),
        ),
        scaffoldBackgroundColor: Color.fromRGBO(23, 23, 29, 1),
        primaryColor: primaryColor,
      );

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(249, 250, 252, 1),
        ),
        scaffoldBackgroundColor: Colors.white,
        primaryColor: primaryColor,
      );
}
