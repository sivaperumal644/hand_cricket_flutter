import 'package:flutter/material.dart';
import 'buttons/button.dart';

class TossSelection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(221, 63, 63, 50),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:42.0, left: 20.0),
            child: Icon(Icons.arrow_back, color: Color.fromRGBO(255, 255, 255, 0.5)),
          ),
          Padding(
            padding: const EdgeInsets.only(top:16.0, left: 20.0),
            child: Text('Select a number', style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.5), fontFamily: 'Oxygen', fontSize: 36),),
          ),
        ]));
  }
}
