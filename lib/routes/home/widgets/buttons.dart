// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

// 🌎 Project imports:
import 'package:hack_club_gp/widgets/buttons.dart';

class PageButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: AnimationConfiguration.toStaggeredList(
          duration: const Duration(seconds: 1),
          childAnimationBuilder: (widget) => SlideAnimation(
            horizontalOffset: 100,
            child: FadeInAnimation(
              child: widget,
            ),
          ),
          children: <Widget>[
            HackClubButton(
              child: Text(
                "📷 QR Trade",
                style: Theme.of(context).textTheme.button,
              ),
              onPressed: () => print("QR Trade"),
            ),
            HackClubButton(
              child: Text(
                "🤝 NFC Trade",
                style: Theme.of(context).textTheme.button,
              ),
              onPressed: () => print("NFC Trade"),
              padding: const EdgeInsets.symmetric(vertical: 10),
            ),
            HackClubButton(
              child: Text(
                "💸 Balance",
                style: Theme.of(context).textTheme.button,
              ),
              onPressed: () => print("Balance"),
            ),
          ],
        ),
      ),
    );
  }
}
