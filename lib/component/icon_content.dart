import 'package:flutter/material.dart';
import 'package:quizdemo/constant.dart';


class IconContent extends StatelessWidget {
  IconContent({@required this.icon,this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon( icon,
          size: 80,
          color: Colors.red,
        ),
        SizedBox(
          height: 20,
        ),
        Text(label,
          style: kLabelTextStyle),
      ],
    );
  }
}