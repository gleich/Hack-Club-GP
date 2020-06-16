// 🐦 Flutter imports:
import 'dart:io';

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
    return Padding(
      padding: padding ?? EdgeInsets.all(0),
      child: RaisedButton(
        onPressed: onPressed,
        color: Theme.of(context).scaffoldBackgroundColor,
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 10,
        ),
        splashColor: Theme.of(context).primaryColor,
        highlightColor: Colors.transparent,
        child: child,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(
            color: Theme.of(context).primaryColor,
            width: 3,
          ),
        ),
      ),
    );
  }
}
