import 'package:flutter/material.dart';
import 'package:app_cdp/constants.dart';
import 'package:app_cdp/screens/tonica_fundamental/components/app_bar.dart';
import 'package:app_cdp/screens/tonica_fundamental/components/body.dart';

class TonicaFundamental extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorTonicaFund,
      appBar: detailsAppBar(context),
      body: Body(),
    );
  }
}
