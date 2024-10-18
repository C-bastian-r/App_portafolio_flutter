import 'package:flutter/material.dart';

class AdaptativeContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  final EdgeInsets margin;
  final EdgeInsets padding;
  final double heightPercent; //entre 0 y 1
  final double widthPercent; //entre 0 y 1
  const AdaptativeContainer(
      {super.key,
      required this.child,
      required this.color,
      required this.margin,
      this.padding = const EdgeInsets.all(5),
      required this.heightPercent,
      required this.widthPercent});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;

    return Container(
      width: screenWidth * widthPercent, // 80% del ancho total de pantalla
      height: screenHeight * heightPercent, // 80% del alto total de pantalla
      color: color, // Aplica el color pasado como parámetro
      margin: margin, // Aplica el margin pasado como parámetro
      padding: padding,
      child: child, // Renderiza el widget hijo
    );
  }
}
