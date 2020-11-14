import 'package:flutter/material.dart';
import 'package:app_cdp/constants.dart';
import 'package:app_cdp/screens/urgencia/components/app_bar.dart';
import 'package:app_cdp/screens/urgencia/components/body.dart';

class UrgenciaInterior extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorUrgencia,
      appBar: detailsAppBar(context),
      body: Body(),
    );
  }
}
