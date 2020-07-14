// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

// 🌎 Project imports:
import 'package:hack_club_gp/models/pageOutline.dart';

class QRTradePage {
  PageOutline get outline => PageOutline(
        pageName: 'QR Code Trading',
        shortName: 'QR Trade',
        icon: MdiIcons.qrcode,
        body: Container(),
      );
}
