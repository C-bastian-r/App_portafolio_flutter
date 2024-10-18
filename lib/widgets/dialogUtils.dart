import 'package:flutter/material.dart';
import 'package:portafolio_app/widgets/adaptativeTool.dart';
import 'package:portafolio_app/widgets/textGradiant.dart';

void showMessageDialog(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Mensaje'),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

void showImageDialog(
    BuildContext context, String label, String imagePath, String description) {
  var screenSize = MediaQuery.of(context).size;
  var screenWidth = screenSize.width;
  var screenHeight = screenSize.height;

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: TextGradiant(textValue: label),
        backgroundColor: const Color.fromARGB(255, 10, 8, 10),
        scrollable: true,
        content: AdaptativeContainer(
          heightPercent: 0.4,
          widthPercent: 0.8,
          color: Colors.transparent,
          margin: const EdgeInsets.all(10),
          child: Container(
            padding: const EdgeInsets.all(5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(imagePath, height: screenHeight * 0.2, width: screenWidth * 0.5,),
                const SizedBox(height: 20,),
                Text(
                  description,
                  style: const TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cerrar'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
