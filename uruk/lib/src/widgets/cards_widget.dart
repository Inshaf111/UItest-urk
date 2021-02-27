import 'package:flutter/material.dart';
import 'package:uruk/src/constants/constants.dart';

import 'credit_card_widget.dart';

class CardsTab extends StatelessWidget {
  const CardsTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        children: [
          Creditcard(backgroundColor: primaryColor,),
          SizedBox(height:20),
          Creditcard(backgroundColor: Colors.yellow[800],),

        ],
      ),
    );
  }
}