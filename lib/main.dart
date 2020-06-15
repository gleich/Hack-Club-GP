// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:hack_club_gp/routes/home/home.dart';
import 'package:hack_club_gp/themes.dart';

void main() => runApp(_HackClubGP());

class _HackClubGP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themes = Themes();
    return MaterialApp(
      title: "Hack Club GP",
      debugShowCheckedModeBanner: false,
      home: HomeRoute(),
      theme: themes.lightTheme,
      darkTheme: themes.darkTheme,
      // themeMode: ThemeMode.light,
    );
  }
}
