import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.lightBlueAccent,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Colors.lightBlueAccent, width: 2.0),
  ),
);

const kDecorationTextField = InputDecoration(

  hintText: 'Entre votre Age.',
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);


const kBottomContainerHeight = 80.0;
const kActiveCardColour = Colors.white;
const kInactiveCardColour = Color(0xFF111328);
const kBottomContainerColour = Color(0xFFEB1555);

const kLabelTextStyle = TextStyle(
  fontSize: 18.0,
  fontFamily: "Source Sans Pro",
  color: Colors.redAccent,
);

const kMidTextStyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.w900,
);
const kBottomLargerButton = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);
const kTitletTextSyle = TextStyle(
  fontSize: 50.0,
  fontWeight: FontWeight.bold,
);
const kResultTextStyle = TextStyle(
  color: Color(0xFF24D876),
  fontSize: 22.0,
  fontWeight: FontWeight.bold,
);

const kBMITextStyle = TextStyle(

  fontSize: 100,
  fontWeight: FontWeight.bold,
);

const kBodyTextStyle = TextStyle(
  fontSize: 22.0,
);