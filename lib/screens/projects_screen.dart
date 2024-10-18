import 'package:flutter/material.dart';
import 'package:portafolio_app/widgets/adaptativeTool.dart';
import 'package:portafolio_app/widgets/circularImage.dart';
import 'package:portafolio_app/widgets/dialogUtils.dart';
import 'package:portafolio_app/widgets/textGradiant.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(228, 10, 8, 10),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(45, 10, 8, 10),
          title: const TextGradiant(textValue: 'Projects'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const TextGradiant(textValue: 'Presiona una burbuja!'),
            Center(
              child: AdaptativeContainer(
                heightPercent: 0.8,
                widthPercent: 0.8,
                margin: const EdgeInsets.all(15),
                color: const Color.fromARGB(45, 10, 8, 10),
                child: Container(
                  margin: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                          onPressed: () {
                            showImageDialog(
                                context,
                                'Ecommerce',
                                'assets/images/img_ecom.png',
                                'Un sistema de ecommerce que utiliza una api publica para ofrecer productos.');
                          },
                          child: const Circularimage(
                              path: 'assets/images/img_ecom.png')),
                      const Divider(
                        color: Colors.white24,
                        thickness: 2,
                        indent: 30,
                        endIndent: 30,
                      ),
                      TextButton(
                          onPressed: () {
                            showImageDialog(
                                context,
                                'Tarjetas',
                                'assets/images/img_cards.png',
                                'Consumo de api publica para mostrar tarjetas seleccionables de personajes de Rick y Morty.');
                          },
                          child: const Circularimage(
                              path: 'assets/images/img_cards.png')),
                      const Divider(
                        color: Colors.white24,
                        thickness: 2,
                        indent: 30,
                        endIndent: 30,
                      ),
                      TextButton(
                          onPressed: () {
                            showImageDialog(
                                context,
                                'Tarjetas',
                                'assets/images/img_logg.png',
                                'Sistema de logueo y registro de usuarios con comprobación de Token de autenticidad');
                          },
                          child: const Circularimage(
                              path: 'assets/images/img_logg.png')),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
