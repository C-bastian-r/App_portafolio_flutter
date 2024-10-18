import 'package:flutter/material.dart';

class Textfield_Pers extends StatelessWidget {
  final String text;
  const Textfield_Pers({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 210,
      margin: const EdgeInsets.only(top: 20, right: 15, left: 15),
      decoration: BoxDecoration(
          gradient: const LinearGradient(colors: [Colors.blue, Colors.green]),
          borderRadius: BorderRadius.circular(15)),
      padding: const EdgeInsets.all(5),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color.fromARGB(200, 10, 8, 10),
            borderRadius: BorderRadius.circular(10)),
        child: Text(text,
          style: const TextStyle(
            color: Colors.white,
            fontStyle: FontStyle.italic
          ),
        ),
      ),
    );
  }
}
