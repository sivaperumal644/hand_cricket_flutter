import 'package:flutter/material.dart';
import 'package:hand_cricket/buttons/button.dart';
import 'toss_selection_screen.dart';
import 'package:provider/provider.dart';
import 'package:hand_cricket/app_state.dart';

class TossPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TossPageState();
  }
}

class TossPageState extends State<TossPage> {
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
            padding: const EdgeInsets.only(top: 32, left: 20),
            child: Text(
              'Toss',
              style: TextStyle(
                  fontFamily: 'Oxygen',
                  fontSize: 36,
                  color: Color.fromRGBO(255, 255, 255, 0.6)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              oddOrEvenInput(
                  context,
                  1,
                  'O',
                  'Odd',
                  Color.fromRGBO(255, 255, 255, 0.5),
                  Color.fromRGBO(229, 109, 109, 100),
                  Colors.white,
                  Color.fromRGBO(255, 255, 255, 0.5)),
              oddOrEvenInput(
                  context,
                  0,
                  'E',
                  'Even',
                  Color.fromRGBO(255, 255, 255, 0.5),
                  Color.fromRGBO(229, 109, 109, 100),
                  Colors.white,
                  Color.fromRGBO(255, 255, 255, 0.5))
            ],
          ),
        ],
      ),
    );
  }
}

Widget oddOrEvenInput(context, input, icon, text, borderColor, iconColor,
    iconBorderColor, textColor) {
  final appState = Provider.of<AppState>(context);
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: InkWell(
      onTap: () {
        appState.setOddOrEven(input);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TossSelection()));
      },
      child: buttons(
          icon, text, borderColor, iconColor, iconBorderColor, textColor),
      borderRadius: BorderRadius.circular(24),
    ),
  );
}
