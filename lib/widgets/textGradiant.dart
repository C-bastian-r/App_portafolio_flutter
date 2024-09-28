import 'package:flutter/material.dart';

class TextGradiant extends StatefulWidget {
  final String textValue;
  const TextGradiant({
    super.key,
    required this.textValue,
  });

  @override
  State<TextGradiant> createState() => _TextGradiantState();
}

class _TextGradiantState extends State<TextGradiant> {
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) =>
          const LinearGradient(colors: [Colors.blue, Colors.purple])
              .createShader(bounds),
      child: Text(
        widget.textValue,
        style: const TextStyle(
            color: Colors.white, fontSize: 20, decoration: TextDecoration.none),
      ),
    );
  }
}
