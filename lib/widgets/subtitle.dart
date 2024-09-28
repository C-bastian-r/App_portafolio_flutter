import 'package:flutter/material.dart';

class Subtitle extends StatelessWidget {
  final String text;
  const Subtitle({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.white54,
            decoration: TextDecoration.none),
      ),
    );
  }
}
