import 'package:flutter/material.dart';
import 'package:hand_cricket/buttons/button.dart';

class Rules extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(221, 63, 63, 50),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 42.0, left: 20.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back,
                  color: Color.fromRGBO(255, 255, 255, 0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 20),
            child: Text(
              'Rules',
              style: TextStyle(
                  fontFamily: 'Oxygen',
                  fontSize: 36,
                  color: Color.fromRGBO(255, 255, 255, 0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: rules('1', 'Select the overs.'),
          ),
          rules('2', 'Select odd or even in the toss.'),
          rules('3', 'Select any number from 0 to 6.'),
          rules('4',
              'If you have won the toss, select your option of batting or bowling.'),
          rules('5', 'If CPU wins the toss, CPU selects the option.'),
          rules('6',
              'The batting and bowling will go on till the number of overs you have selected or till the batsman is dismissed.'),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0, left: 20, right: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: gotItButton())
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget rulesIndex(icon, iconColor, iconBorderColor) {
  return Container(
    child: Center(
      child: Text(
        icon,
        style: TextStyle(fontSize: 24, color: iconColor),
      ),
    ),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0), color: iconBorderColor),
    width: 40,
    height: 40,
  );
}

Widget rules(index, content) {
  return Padding(
    padding: const EdgeInsets.only(top: 16.0, left: 20, right: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Column(
          children: <Widget>[
            rulesIndex(index, Color.fromRGBO(221, 63, 63, 50), Colors.white),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  content,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: 'Oxygen-bold.ttf'),
                ),
              ],
            ),
          ),
        )
      ],
    ),
  );
}
