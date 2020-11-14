import 'package:flutter/material.dart';
import 'package:app_cdp/constants.dart';
import 'package:app_cdp/screens/tonica_dia/components/app_bar.dart';
import 'package:app_cdp/screens/tonica_dia/components/body.dart';

class TonicaDia extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTonicaDia,
      appBar: detailsAppBar(context),
      body: Body(),
    );
  }
}
