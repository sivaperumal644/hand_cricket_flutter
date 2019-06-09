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
                borderRadius: BorderRadius.circular(25.0),
                color: iconBorderColor),
            width: 45,
            height: 45,
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
