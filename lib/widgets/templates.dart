// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class SelectorTemplate extends StatefulWidget {
  final String name;
  final IconData icon;
  final Widget body;

  SelectorTemplate({
    @required this.name,
    @required this.icon,
    @required this.body,
  });

  @override
  _SelectorTemplate createState() => _SelectorTemplate();
}

class _SelectorTemplate extends State<SelectorTemplate> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              widget.icon,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(width: 20),
            Text(
              widget.name,
              style: TextStyle(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: widget.body,
      bottomNavigationBar: SnakeNavigationBar(
        style: SnakeBarStyle.floating,
        snakeColor: Theme.of(context).primaryColor,
        snakeShape: SnakeShape.rectangle,
        selectedItemColor: Theme.of(context).scaffoldBackgroundColor,
        backgroundColor: Theme.of(context).appBarTheme.color,
        shadowColor: Colors.yellow,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.qrcode),
            title: Text(
              'QR Trade',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.nfcTap),
            title: Text('NFC Trade'),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.scaleBalance),
            title: Text('Balance'),
          ),
        ],
        padding: EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _currentIndex,
        onPositionChanged: (int index) => setState(
          () => _currentIndex = index,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(25),
          ),
        ),
      ),
    );
  }
}
