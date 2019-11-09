import 'package:flutter/material.dart';
import 'package:card_settings/card_settings.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quizdemo/main.dart';
import 'package:quizdemo/screens/categorie.dart';
import 'package:card_settings/card_settings.dart';

const List<String> allHobbies = <String>[
  'running',
  'flying',
  'coloring',
  'jumping',
  'eating',
  'hiding',
  'exploring',
  'singing',
  'dancing',
  'acting',
  'cleaning',
  'shopping',
  'sewing',
  'cooking',
];
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        );
  }
}

class CardForm extends StatefulWidget {
  static const String id = 'CARD_screen';
  @override
  _CardFormState createState() => _CardFormState();
}

class _CardFormState extends State<CardForm> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String title = "Spheria";
  String author = "Cody Leet";
  List<String> profession = ["etudiant", "eleves", "professeur", "4", "5"];
  int age = 12;
  List<String> genre = [
    'homme',
    "femme",
  ];
  List<String> adresse = ['BASSE-TERRE',
    'BOUILLANTE',
    'CAPESTERRE',
    'CAPESTERRE-BELLE-EAU',
    'DESHAIES',

  ];
  List<String >profession1 = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: CardSettings(
          children: <Widget>[
            CardSettingsHeader(
              label: 'Bio ',
            ),
            CardSettingsListPicker(
              label: 'Genre',
              hintText: "Homme ou femme",
              icon: Icon(FontAwesomeIcons.male),
              options: genre,
              initialValue: genre[0],
              onChanged: (value) => setState(() =>  genre[0]= value),
            ),
            CardSettingsMultiselect(
              icon: Icon(FontAwesomeIcons.print),
              label: 'Professions',
              initialValues: profession1,
              options: profession,
              onSaved: (value){
                profession = value;
              },
            ),
            CardSettingsNumberPicker(
              icon: Icon(FontAwesomeIcons.birthdayCake),

              label: "Age",
              min: 10,
              max: 90,
              initialValue: age,
              onChanged: (value) => setState(() => age = value),
            ),
            CardSettingsListPicker(
              label: 'Adresse',
              icon: Icon(FontAwesomeIcons.mapMarkedAlt),
              options: adresse,
              initialValue: adresse[0],
              onChanged: (value) => setState(() => adresse[0] = value),
            ),

            CardSettingsButton(
              label: 'Continuer',
              textColor: Colors.white,
              backgroundColor: Colors.red,
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context, Categorie.id);
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
