// 🐦 Flutter imports:
import 'package:flutter/material.dart';

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
    final bottomNavBarItems = <String>[
      QRTradeRoute.name,
    ];

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
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
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
        onTap: (int index) => Navigator.popAndPushNamed(
          context,
          bottomNavBarItems[index],
        ),
      ),
    );
  }
}
