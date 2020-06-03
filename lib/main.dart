// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:hack_club_gp/routes/home/home.dart';

void main() => runApp(_HackClubGP());

class _HackClubGP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Hack Club GP",
      debugShowCheckedModeBanner: false,
      home: HomeRoute(),
    );
  }
}
