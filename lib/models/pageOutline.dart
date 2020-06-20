// 🐦 Flutter imports:
import 'package:flutter/material.dart';

class PageOutline {
  final String shortName;
  final String pageName;
  final IconData icon;
  final Widget body;

  PageOutline({
    @required this.shortName,
    @required this.pageName,
    @required this.icon,
    @required this.body,
  });
}
