import 'package:flutter/material.dart';
import 'package:portafolio_app/screens/projects_screen.dart';
import 'package:portafolio_app/widgets/TextFieldPers.dart';
import 'package:portafolio_app/widgets/adaptativeTool.dart';
import 'package:portafolio_app/widgets/circularImage.dart';
import 'package:portafolio_app/widgets/subtitle.dart';
import 'package:portafolio_app/widgets/textGradiant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Presentation();
  }
}

class Presentation extends StatelessWidget {
  const Presentation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(228, 10, 8, 10),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(45, 10, 8, 10),
          title: const TextGradiant(textValue: 'Portafolio'),
        ),
        body: Center(
          child: AdaptativeContainer(
              padding: const EdgeInsets.all(0),
              widthPercent: 0.75,
              heightPercent: 0.6,
              color: Colors.transparent,
              margin: const EdgeInsets.all(0),
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Circularimage(
                              path: 'assets/images/fotoportafolio.png'),
                        ],
                      ),
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              TextGradiant(textValue: 'Hola soy Sebastian!'),
                              Text(
                                '(Estudiante de ingeniería)',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const Divider(
                        color: Colors.white24,
                        thickness: 2,
                        indent: 30,
                        endIndent: 30,
                      ),
                      const Subtitle(text: 'About me...'),
                      const Textfield_Pers(
                          text:
                              'Apasionado por el mundo de la tecnología y en constante formación, ya que la computación evoluciona a diario. Soy una persona proactiva y autodidacta, siempre en busca de nuevos conocimientos y habilidades que me permitan enfrentar con éxito los desafíos del sector. Disfruto aprender de forma continua para mantenerme al día y aportar soluciones desde distintos ángulos'),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 150),
                          OutlinedButton.icon(
                            icon: const Icon(
                              Icons.arrow_circle_right_outlined,
                              size: 50,
                              color: Colors.green,
                            ),
                            style: ButtonStyle(
                                fixedSize: WidgetStateProperty.all(
                                    const Size(200, 70))),
                            label: const Text('¿Continuamos?'),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) =>
                                      const ProjectsScreen()));
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )),
        ));
  }
}
