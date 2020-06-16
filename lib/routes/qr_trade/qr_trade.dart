import 'package:flutter/material.dart';
import 'package:hack_club_gp/widgets/templates.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class QRTradeRoute extends StatelessWidget {
  static const name = '/trade/qr';

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      name: "QR Code Trading",
      icon: MdiIcons.qrcode,
      body: Text('Ahhh'),
    );
  }
}
