// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class Themes {
  // Shared Values
  static const _primaryColor = Color.fromRGBO(236, 55, 80, 1);
  static const _fontFamily = "Metropolis";
  TextTheme _textTheme(brightness) => TextTheme(
        button: TextStyle(
          fontSize: 25,
          color: Brightness.dark == brightness ? Colors.white : Colors.black,
        ),
      );

  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(35, 37, 40, 1),
        ),
        scaffoldBackgroundColor: Color.fromRGBO(23, 23, 29, 1),
        primaryColor: _primaryColor,
        textTheme: _textTheme(Brightness.dark),
        fontFamily: _fontFamily,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: _primaryColor,
        ),
      );

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
          color: Color.fromRGBO(249, 250, 252, 1),
        ),
        scaffoldBackgroundColor: Colors.white,
        primaryColor: _primaryColor,
        textTheme: _textTheme(Brightness.light),
        fontFamily: _fontFamily,
      );
}
