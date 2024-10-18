import 'package:flutter/material.dart';

//Recibe un path de imagen y renderiza la misma en forma de circulo
class Circularimage extends StatelessWidget {
  final String path;
  const Circularimage({
    super.key,
    required this.path,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150,
      height: 150,
      child: ClipOval(
        child: Image.asset(
          path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
