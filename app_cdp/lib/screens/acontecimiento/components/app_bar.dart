import 'package:app_cdp/constants.dart';
import 'package:app_cdp/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar detailsAppBar(BuildContext context) {
  return AppBar(
    centerTitle: true,
    title: Image.asset(
      "assets/images/logo_horizontal.png",
      scale: 9,
    ),
    backgroundColor: colorAcontecimiento,
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.white,
      ),
      onPressed: () {
        {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeScreen()),
          );
        }
      },
    ),
    /*actions: <Widget>[
      IconButton(
        icon: SvgPicture.asset("assets/icons/share.svg"),
        onPressed: () {},
      ),
      IconButton(
        icon: SvgPicture.asset("assets/icons/more.svg"),
        onPressed: () {},
      ),
    ],*/
  );
}
