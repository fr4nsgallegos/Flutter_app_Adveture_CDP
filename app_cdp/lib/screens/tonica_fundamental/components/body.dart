import 'package:flutter/material.dart';
import 'package:app_cdp/constants.dart';
import 'package:app_cdp/screens/tonica_fundamental/components/item_image.dart';
import 'package:app_cdp/screens/tonica_fundamental/components/order_button.dart';
import 'package:app_cdp/screens/tonica_fundamental/components/title_price_rating.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ItemImage(
          imgSrc: "assets/images/c_tonicafundamental.png",
        ),
        Expanded(
          child: ItemInfo(),
        ),
      ],
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: <Widget>[
          //shopeName(name: "MacDonalds"),//PUEDE SER PARA EL NOMBRE
          TitleArcanoRating(
            name: "Tonica del día",
            //numOfReviews: 24,
            //rating: 4,
            arcano: 15,
            usuario: "Pedro",
            //onRatingChanged: (value) {},
          ),
          Text(
            "Aqui va ALGUN TEXTO REFERNETE CON INFORMACIÓN O ALGOOOOO ",
            style: TextStyle(
              height: 1.5,
            ),
          ),
          SizedBox(height: size.height * 0.1),
          // Free space  10% of total height
          OrderButton(
            size: size,
            press: () {},
          )
        ],
      ),
    );
  }

  Row shopeName({String name}) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.location_on,
          color: ksecondaryColor,
        ),
        SizedBox(width: 10),
        Text(name),
      ],
    );
  }
}
