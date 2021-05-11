import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableCardContent extends StatelessWidget {
  final String cardType;
  IconData cardIcon;
  String cardText;

  ReusableCardContent({@required this.cardType});

  @override
  Widget build(BuildContext context) {

    if(cardType == 'm') {
      cardIcon = FontAwesomeIcons.mars;
      cardText = 'MALE';
    } else {
      cardIcon = FontAwesomeIcons.venus;
      cardText = 'FEMALE';
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          cardIcon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardText,
          style: TextStyle(
            fontSize: 18.0,
            color: Color(0xFF8E8D88),
          ),
        ),
      ],
    );
  }
}