import 'package:flutter/material.dart';

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
        child: Image.network(
          path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
