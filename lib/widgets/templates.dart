// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

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
      bottomNavigationBar: BottomNavigationBar(
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
      ),
    );
  }
}
