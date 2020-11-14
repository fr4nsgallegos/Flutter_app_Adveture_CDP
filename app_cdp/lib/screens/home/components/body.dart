import 'package:app_cdp/screens/acontecimiento/acontecimiento_screen.dart';
import 'package:app_cdp/screens/cabala/cabala_screen.dart';
import 'package:app_cdp/screens/tonica_dia/tonica_dia_screen.dart';
import 'package:app_cdp/screens/tonica_fundamental/tonica_dia_screen.dart';
import 'package:app_cdp/screens/urgencia/tonica_dia_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_cdp/models/RecipeBundel.dart';
//import 'package:app_cdp/screens/details/details-screen.dart';
import 'package:app_cdp/screens/home/home_screen.dart';
import 'package:app_cdp/size_config.dart';

//import 'categories.dart';
import 'recipe_bundel_card.dart';

class Body extends StatelessWidget {
  Widget _pageChooser(int page) {
    final CabalaScreen _cabalaAno = new CabalaScreen();
    final AcontecimientoScreen _acontecimientoDia = new AcontecimientoScreen();
    final TonicaDia _tonicaDia = new TonicaDia();
    final TonicaFundamental _tonicaFundamental = new TonicaFundamental();
    final UrgenciaInterior _urgenciaInterior = new UrgenciaInterior();

    switch (page) {
      case 0:
        return _cabalaAno;
      case 1:
        return _acontecimientoDia;
      case 2:
        return _tonicaDia;
      case 3:
        return _tonicaFundamental;
      case 4:
        return _urgenciaInterior;

      default:
        return new Container(
          child: new Center(
              child: new Text(
            'No hay pagina seleccionada',
            style: new TextStyle(fontSize: 30),
          )),
        );
    }
  }

  Widget _showPage = new HomeScreen();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 25,
          ),
          //Categories(),
          Expanded(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: SizeConfig.defaultSize * 2),
              child: GridView.builder(
                itemCount: recipeBundles.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount:
                      SizeConfig.orientation == Orientation.landscape ? 2 : 1,
                  mainAxisSpacing: 20,
                  crossAxisSpacing:
                      SizeConfig.orientation == Orientation.landscape
                          ? SizeConfig.defaultSize * 2
                          : 0,
                  childAspectRatio: 1.65,
                ),
                itemBuilder: (context, index) => RecipeBundelCard(
                  recipeBundle: recipeBundles[index],
                  press: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => _pageChooser(index),
                      ),
                    );
                    _showPage = _pageChooser(index);
                    print(index);
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
