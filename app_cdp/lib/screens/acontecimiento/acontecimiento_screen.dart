import 'package:flutter/material.dart';
import 'package:app_cdp/constants.dart';
import 'package:app_cdp/screens/acontecimiento/components/app_bar.dart';
import 'package:app_cdp/screens/acontecimiento/components/body.dart';

class AcontecimientoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorAcontecimiento,
      appBar: detailsAppBar(context),
      body: Body(),
    );
  }
}
