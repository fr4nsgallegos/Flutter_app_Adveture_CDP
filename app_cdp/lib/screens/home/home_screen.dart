import 'package:app_cdp/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:app_cdp/screens/home/components/body.dart';
import 'package:app_cdp/size_config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      // We are not able to BottomNavigationBar because the icon parameter dont except SVG
      // We also use Provied to manage the state of our Nav
      //bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
              Color(0xFF1E254B),
              Color(0xFF4B2F65),
            ])),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.home_outlined,
          size: 35,
        ),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
      ),
      // On Android by default its false
      centerTitle: true,
      title: Image.asset(
        "assets/images/logo_horizontal.png",
        scale: 9,
      ),
    );
  }
}
