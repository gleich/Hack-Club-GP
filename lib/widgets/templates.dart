// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

// 📦 Package imports:
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// 🌎 Project imports:
import 'package:hack_club_gp/routes/qr_trade/qr_trade.dart';

class PageTemplate extends StatelessWidget {
  final String name;
  final IconData icon;
  final Widget body;

  PageTemplate({
    @required this.name,
    @required this.icon,
    @required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              icon,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(width: 20),
            Text(name),
          ],
        ),
      ),
      bottomNavigationBar: NavBar(),
    );
  }
}

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  final bottomNavBarItems = <String>[
    QRTradeRoute.name,
  ];
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SnakeNavigationBar(
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
      // shape:,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      currentIndex: _currentIndex,
      onPositionChanged: (int index) => setState(
        () => _currentIndex = index,
      ),
      shape: BeveledRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
    );
  }
}
