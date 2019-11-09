import 'package:flutter/material.dart';
import 'package:quizdemo/component/form_card.dart';


class Inscription extends StatefulWidget {
  static const String id = 'inscription_screen';
  @override
  _InscriptionState createState() => _InscriptionState();
}
enum Gender { male, female }
class _InscriptionState extends State<Inscription> {
  Gender selectorGender;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.red),
        backgroundColor: Colors.white,
        title: Text(' Quiz Drep\'Agir',
          style: TextStyle(
            color: Colors.red,

            fontFamily: "Pacifico",
          ),),
        centerTitle: true,

      ),

      body:  CardForm(

      ),

    );
  }
}




