// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// 🌎 Project imports:
import 'package:hack_club_gp/widgets/templates.dart';

class QRTradeRoute extends StatelessWidget {
  static const name = '/trade/qr';

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      name: "QR Code Trading",
      icon: MdiIcons.qrcode,
      body: Container(),
    );
  }
}
