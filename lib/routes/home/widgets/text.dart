// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class Greeting extends StatelessWidget {
  final _morningEmoji = '🍳';
  final _afternoonEmoji = ' ☕';
  final _eveningEmoji = '🦉';

  final _fontSize = 60.0;

  @override
  Widget build(BuildContext context) {
    String emoji;
    String timeOfDay;

    final hour = DateTime.now().hour;
    if (hour < 12) {
      emoji = _morningEmoji;
      timeOfDay = 'Morning';
    } else if (hour < 17) {
      emoji = _afternoonEmoji;
      timeOfDay = 'Afternoon';
    } else {
      emoji = _eveningEmoji;
      timeOfDay = 'Evening';
    }

    return AnimationLimiter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: AnimationConfiguration.toStaggeredList(
          childAnimationBuilder: (widget) => SlideAnimation(
            duration: const Duration(seconds: 1),
            horizontalOffset: -70,
            child: FadeInAnimation(
              duration: const Duration(seconds: 1),
              child: widget,
            ),
          ),
          children: <Widget>[
            Text(
              "Good$emoji",
              style: TextStyle(
                fontSize: _fontSize,
              ),
            ),
            Text(
              '$timeOfDay!',
              style: TextStyle(
                fontSize: _fontSize,
                decoration: TextDecoration.underline,
                decorationColor: Theme.of(context).primaryColor,
                decorationStyle: TextDecorationStyle.wavy,
                decorationThickness: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
