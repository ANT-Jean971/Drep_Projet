import 'package:flutter/material.dart';
import 'package:quizdemo/component/rounded_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'incrisption.dart';
import 'package:quizdemo/main.dart';

class Acceuil extends StatefulWidget {
  static const String id = 'acceuil_screen';
  @override
  _AcceuilState createState() => _AcceuilState();
}

class _AcceuilState extends State<Acceuil> {
//  Animation animation;
//  AnimationController controller;
//  @override
//  void initState() {
//    super.initState();
//
//    controller = AnimationController(
//      duration: Duration(seconds: 1),
//      vsync: this,
//      upperBound: 100.0,
//    );
//
//    animation = ColorTween(begin: Colors.blueGrey, end: Colors.white)
//        .animate(controller);
//
//    controller.forward();
//
//    controller.addListener(() {
//      setState(() {});
//    });
//  }

//  @override
//  void dispose() {
//    controller.dispose();
//    super.dispose();
//  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.graduationCap, size: 20),
              title: Text('Topics')),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bolt, size: 20),
              title: Text('About')),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.userCircle, size: 20),
              title: Text('Profile')),
        ].toList(),
        fixedColor: Colors.redAccent[200],
        onTap: (int idx) {
          switch (idx) {
            case 0:
              // do nuttin
              break;
            case 1:
              Navigator.pushNamed(context, '/about');
              break;
            case 2:
              Navigator.pushNamed(context, '/profile');
              break;
          }
        },
      ),
      drawer: Drawer(
        elevation: 5,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Center(
                child: Image.asset(
                  'images/1.png',
                  fit: BoxFit.cover,
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.red,
              ),
            ),
            ListTile(
              title: const Text(
                'Paramètres',
                style: TextStyle(
                  fontFamily: "Source Sans Pro",
                  fontSize: 20,
                ),
              ),
              onTap: () {},
            ),
            const AboutListTile(
              child: Text(
                'Qui sommes nous',
                style: TextStyle(
                  fontFamily: "Source Sans Pro",
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red),
        title: Text(
          'Quiz Drep\'Agir',
          style: TextStyle(
            color: Colors.red,
            fontFamily: "Pacifico",
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                TypewriterAnimatedTextKit(
                  text: ['Bienvenue '],
                  textStyle: TextStyle(
                    fontSize: 55.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontFamily: "Pacifico",
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 52.0,
            ),
            RoundedButton(
              colour: Colors.blueGrey,
              onPres: () {
                Navigator.pushNamed(context, Inscription.id);
              },
              text: "Commencer le quiz",
            ),
          ],
        ),
      ),
    );
  }
}
