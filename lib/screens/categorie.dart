import 'package:flutter/material.dart';
import 'package:quizdemo/component/reusable_card.dart';
import 'package:quizdemo/component/icon_content.dart';
import 'package:quizdemo/screens/quiz_adulte.dart';
import 'quiz.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Categorie extends StatefulWidget {
  static const String id = 'categorie_screen';
  @override
  _CategorieState createState() => _CategorieState();
}

class _CategorieState extends State<Categorie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red),
        backgroundColor: Colors.white,
        title: Text(
          ' Quiz Drep\'Agir',
          style: TextStyle(
            color: Colors.red,

            fontFamily: "Pacifico",
          ),
        ),
        centerTitle: true,
      ),
      body: Column(

        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(

              margin: EdgeInsets.only(top: 40, bottom: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Text(
                "Selectionner une catégorie entre les 3",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontFamily: "Source Sans Pro",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(

                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ReusableCard(
                          onPress: () {
                            setState(() {
                              Navigator.pushNamed(context, Questions.id);
                            });
                          },
                          colour: Colors.white,
                          cardChild: new IconContent(
                            icon: FontAwesomeIcons.child,
                            label: "ENFANT",
                          ),
                        ),
                      ],
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(

                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ReusableCard(
                          onPress: () {
                            setState(() {
                              Navigator.pushNamed(context, QuizAdulte.id);
                            });
                          },
                          colour: Colors.white,
                          cardChild: new IconContent(
                            icon: FontAwesomeIcons.userGraduate,
                            label: "ADULTE",
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),

              Container(
                width: 250,
                decoration: BoxDecoration(

                  shape: BoxShape.circle,
                ),
                child: ReusableCard(
                  onPress: () {
                    setState(() {
                      Navigator.pushNamed(context, Questions.id);
                    });
                  },
                  colour: Colors.white,
                  cardChild: new IconContent(
                    icon: FontAwesomeIcons.userTie,
                    label: "SECIALISTE",
                  ),
                ),
              ),

        ],
      ),
    );
  }
}
