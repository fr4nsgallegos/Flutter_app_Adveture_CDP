import 'package:flutter/material.dart';
import 'package:app_cdp/constants.dart';
import 'package:app_cdp/screens/cabala/components/app_bar.dart';
import 'package:app_cdp/screens/cabala/components/body.dart';

class CabalaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorCabala,
      appBar: detailsAppBar(context),
      body: Body(),
    );
  }
}
