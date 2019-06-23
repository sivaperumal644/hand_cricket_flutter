import 'package:flutter/material.dart';

Widget buttons(icon, text, borderColor, iconColor, iconBorderColor, textColor) {
  return Container(
    height: 80,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: borderColor, width: 3)),
    child: Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Center(
              child: Text(
                icon,
                style: TextStyle(fontSize: 24, color: iconColor),
              ),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: iconBorderColor),
            width: 40,
            height: 40,
          ),
        ),
        Text(
          text,
          style: TextStyle(fontSize: 24, color: textColor),
        )
      ],
    ),
  );
}

Widget gotItButton() {
  return Container(
    height: 80,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border:
            Border.all(color: Color.fromRGBO(255, 255, 255, 0.5), width: 3)),
    child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('GOT IT', style: TextStyle(fontSize: 24, color: Colors.white))
        ],
      ),
    ),
  );
}
