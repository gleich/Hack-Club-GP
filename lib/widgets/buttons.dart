// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class HackClubButton extends StatelessWidget {
  final Widget child;
  final void Function() onPressed;
  final EdgeInsets padding;

  HackClubButton({
    @required this.child,
    @required this.onPressed,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: padding ?? EdgeInsets.all(0),
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: child,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              begin: Alignment(-1.0, -2.0),
              end: Alignment(1.0, 2.0),
              colors: <Color>[
                Color.fromRGBO(242, 98, 18, 1),
                Color.fromRGBO(242, 37, 138, 1)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
