import 'package:flutter/material.dart';
import 'package:portafolio_app/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String buttonText = 'Click';
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Center(
              child: Text('Portafolio', style: TextStyle(color: Colors.white)),
            )),
        body: currentIndex == 0
            ? Center(
                child: Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.amber[50],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green[200],
                          textStyle: const TextStyle(
                              color: Colors.black,
                              fontStyle: FontStyle.italic)),
                      onPressed: () {
                        setState(() {
                          if (buttonText == 'Click') {
                            buttonText = 'clicked';
                          } else {
                            buttonText = 'Click';
                          }
                        });
                      },
                      child: Text(buttonText),
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (BuildContext context) {
                            return const SecondPage();
                          }));
                        },
                        child: const Text('Press'))
                  ],
                ),
              ))
            : SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: Center(
                  child: Image.network(
                    'https://th.bing.com/th/id/OIP.fT-vvwJLNu7_F8ecncFtaQHaE_?rs=1&pid=ImgDetMain',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                label: 'Favorite',
                icon: Icon(
                  Icons.home,
                )),
            BottomNavigationBarItem(
                label: 'Info',
                icon: Icon(
                  Icons.settings,
                ))
          ],
          onTap: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}
