import 'package:flutter/material.dart';
import 'package:app_cdp/constants.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class TitleArcanoRating extends StatelessWidget {
  final int arcano;
  //final double rating;
  final String name;
  final String usuario;
  //final RatingChangeCallback onRatingChanged;
  const TitleArcanoRating({
    Key key,
    this.arcano,
    //this.rating,
    this.name,
    this.usuario,
    //this.onRatingChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: Theme.of(context).textTheme.headline4,
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    /*SmoothStarRating(
                      borderColor: Colors.cyan,
                      //rating: rating,
                      //onRatingChanged: onRatingChanged,
                    ),*/
                    SizedBox(width: 10),
                    Flexible(
                      child: Text("$usuario, tu número arcano es: "),
                    )
                  ],
                ),
              ],
            ),
          ),
          arcanoTag(context, arcano: arcano),
        ],
      ),
    );
  }

  ClipPath arcanoTag(BuildContext context, {int arcano}) {
    return ClipPath(
      clipper: PricerCliper(),
      child: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.symmetric(vertical: 15),
        height: 66,
        width: 65,
        color: colorAcontecimiento,
        child: Text(
          "\#$arcano",
          style: Theme.of(context)
              .textTheme
              .headline5
              .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class PricerCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double ignoreHeight = 20;
    path.lineTo(0, size.height - ignoreHeight);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, size.height - ignoreHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
