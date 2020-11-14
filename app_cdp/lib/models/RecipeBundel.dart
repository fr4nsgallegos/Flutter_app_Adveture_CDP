import 'package:flutter/material.dart';
import 'package:app_cdp/constants.dart';

class RecipeBundle {
  final int id;
  final String title, description, imageSrc, note;
  final Color color;

  RecipeBundle(
      {this.id,
      this.title,
      this.description,
      this.imageSrc,
      this.color,
      this.note});
}

// Demo list
List<RecipeBundle> recipeBundles = [
  RecipeBundle(
      id: 1,
      title: "Cábala de año",
      description:
          "Continuamos ahora con las Matemáticas, toda nuestra vida se desarrolla con las Matemáticas.",
      imageSrc: "assets/images/cabala.png",
      color: colorCabala,
      note: "La Ley del Karma se desarrolla con los Números."),
  RecipeBundle(
    id: 2,
    title: "Acontecimiento del día",
    description:
        "Hay que saber escoger con exactitud del día o de la noche la hora para realizar con éxito cualquier actividad de la realidad.",
    imageSrc: "assets/images/acontecimiento.png",
    color: colorAcontecimiento,
    note:
        "Uno puede escoger una hora, un día, un mes, un año, para sus cosas particulares.",
  ),
  RecipeBundle(
    id: 3,
    title: "Tónica del día",
    description:
        "Por medio de este sistema sabe uno como le va a ir para saber como actuar ese día.",
    imageSrc: "assets/images/pensando.png",
    color: colorTonicaDia,
    note:
        "Por medio de este sistema sabe uno como le va a ir para saber como actuar ese día.",
  ),
  RecipeBundle(
    id: 3,
    title: "Tónica fundamental",
    description:
        "LA TÓNICA FUNDAMENTAL, ES LA URGENCIA INTERIOR más la suma cabalística del número de letras del nombre completo.",
    imageSrc: "assets/images/urgencia.png",
    color: colorTonicaFund,
    note: "ES LA URGENCIA INTERIOR",
  ),
  RecipeBundle(
    id: 3,
    title: "Urgencia Interior",
    description:
        "La Urgencia Interior se calcula haciendo la suma cabalística de la fecha del nacimiento, el día, el mes y el año.",
    imageSrc: "assets/images/meditation.png",
    color: colorUrgencia,
    note: "LA URGENCIA INTERIOR",
  ),
];
