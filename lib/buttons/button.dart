import 'package:flutter/material.dart';

Card buttons(image, text){
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24)
    ),
    child: Row(
      children: <Widget>[
        Image.asset(image),
        Text(
          text,
          style: TextStyle(
              fontFamily: 'Oxygen',
              fontSize: 30,
              color: Color.fromRGBO(255,255,255,0.6),
          ) 
        )
      ],
    ),
  );
}