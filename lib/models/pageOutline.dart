// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class PageOutline {
  final String pageName;
  final String shortName;
  final IconData icon;
  final Widget body;

  PageOutline({
    @required this.pageName,
    @required this.icon,
    @required this.body,
    this.shortName
  });
}
