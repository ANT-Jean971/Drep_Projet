import 'package:flutter/material.dart';
import 'package:quizdemo/screens/accueil.dart';
import 'package:quizdemo/screens/categorie.dart';
import 'package:quizdemo/screens/incrisption.dart';
import 'package:quizdemo/screens/quiz.dart';
import 'package:quizdemo/screens/quiz_adulte.dart';
void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Colors.grey, // used for card headers
        cardColor: Colors.white, // used for field backgrounds
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.red,
      ),
      initialRoute: Acceuil.id,
      routes: {
        Acceuil.id: (context) => Acceuil(),
        Inscription.id: (context) => Inscription(),
        Categorie.id: (context) => Categorie(),
        Questions.id: (context) => Questions(),
        QuizAdulte.id: (context) => QuizAdulte(),
      },
    );
  }
}


