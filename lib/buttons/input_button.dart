import 'package:flutter/material.dart';

Widget inputButton(input) {
  return Container(
    width: 90,
    height: 90,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        border:
            Border.all(color: Color.fromRGBO(255, 255, 255, 0.5), width: 3)),
    child: Center(
      child: Text(
        input,
        style: TextStyle(fontSize: 36, color: Colors.white),
      ),
    ),
  );
}
