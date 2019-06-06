import 'package:flutter/material.dart';

Widget buttons(icon, text) {
  return Container(

    height: 80,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border:
            Border.all(color: Color.fromRGBO(255, 255, 255, 0.5), width: 3)),
    child: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Center(
              child: Text(
                icon,
                style: TextStyle(
                    fontSize: 24, color: Color.fromRGBO(229, 109, 109, 100)),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.white),
            width: 45,
            height: 45,
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 24, color: Color.fromRGBO(255, 255, 255, 0.5)),
        )
      ],
    ),
  );
}
