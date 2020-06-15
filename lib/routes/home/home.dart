// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 🌎 Project imports:
import 'package:hack_club_gp/routes/home/widgets/buttons.dart';
import 'package:hack_club_gp/routes/home/widgets/text.dart';
import 'package:hack_club_gp/widgets/buttons.dart';

class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Greeting(),
            const SizedBox(
              height: 20,
            ),
            PageButtons(),
          ],
        ),
      ),
    );
  }
}
