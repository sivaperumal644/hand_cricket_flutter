import 'package:flutter/material.dart';
import 'package:hand_cricket/buttons/input_button.dart';
import 'package:hand_cricket/app_state.dart';
import 'package:provider/provider.dart';
import 'tossing_screen.dart';
import 'dart:math';

class TossSelection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TossSelectionState();
  }
}

class TossSelectionState extends State<TossSelection> {
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
                      color: Color.fromRGBO(255, 255, 255, 0.5)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0, left: 20.0),
                child: Text(
                  'Select a number',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.5),
                      fontFamily: 'Oxygen',
                      fontSize: 36),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 75.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    tossInput(context, '6'),
                    tossInput(context, '5'),
                    tossInput(context, '4')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    tossInput(context, '3'),
                    tossInput(context, '2'),
                    tossInput(context, '1')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[tossInput(context, '0')],
                ),
              )
            ]));
  }
}

Widget tossInput(context, input) {
  final appState = Provider.of<AppState>(context);
  return InkWell(
      onTap: () {
        appState.setSelectedInput(int.parse(input) + random());
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TossingPage()));
      },
      child: inputButton(input),
      borderRadius: BorderRadius.circular(40));
}

int random() {
  int min = 0;
  int max = 7;
  final rdm = new Random();
  int rnd = min + rdm.nextInt(max - min);
  return rnd;
}
