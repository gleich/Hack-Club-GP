// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// 📦 Package imports:
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// 🌎 Project imports:
import 'package:hack_club_gp/models/pageOutline.dart';
import 'package:hack_club_gp/routes/selector/pages/balance.dart';
import 'package:hack_club_gp/routes/selector/pages/nfc_trade.dart';
import 'package:hack_club_gp/routes/selector/pages/qr_trade.dart';

class SelectorRoute extends StatefulWidget {
  final int initialIndex;

  SelectorRoute(this.initialIndex);

  @override
  _SelectorRoute createState() => _SelectorRoute();
}

class _SelectorRoute extends State<SelectorRoute> {
  var _currentIndex = 0;
  var _setInitial = false;
  var _pageOutlines = <PageOutline>[
    QRTradePage().outline,
    NFCTradePage().outline,
    BalanceTradePage().outline,
  ];

  @override
  Widget build(BuildContext context) {
    if (!_setInitial) {
      _currentIndex = widget.initialIndex;
      _setInitial = true;
    }
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              _pageOutlines[_currentIndex].icon,
              color: Theme.of(context).primaryColor,
            ),
            const SizedBox(width: 20),
            Text(
              _pageOutlines[_currentIndex].pageName,
              style: TextStyle(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Colors.black,
              ),
            ),
          ],
        ),
      ),
      body: _pageOutlines[_currentIndex].body,
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
            title: Text('QR Trade'),
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
