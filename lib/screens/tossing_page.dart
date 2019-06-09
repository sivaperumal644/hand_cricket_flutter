import 'package:flutter/material.dart';
import 'package:hand_cricket/buttons/button.dart';
import 'match_screen.dart';
import 'package:provider/provider.dart';
import 'package:hand_cricket/app_state.dart';
import 'dart:math';

class TossingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return TossingPageState();
  }
}

class TossingPageState extends State<TossingPage> {
  bool isTossing = true;
  String tossResult = 'TOSSING';
  Color color = Color.fromRGBO(255, 255, 255, 0.5);
  String won = "";
  Widget choice = Text('');
  String youHaveTo;
  Widget batting = Container();
  Widget bowling = Container();
  String opponentChoice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(221, 63, 63, 50),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 75),
            child: Stack(children: <Widget>[
              Center(
                child: SizedBox(
                  child: isTossing == true
                      ? CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation(Colors.white),
                          strokeWidth: 5.0,
                        )
                      : null,
                  height: 220,
                  width: 220,
                ),
              ),
              Center(
                child: Container(
                  width: 220,
                  height: 220,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(110),
                      border: Border.all(color: color, width: 5)),
                ),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 90.0),
                child: Text(
                  tossResult,
                  style: TextStyle(
                      fontFamily: 'Oxygen', fontSize: 36, color: color),
                ),
              ))
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 44.0),
            child: Text(
              won,
              style: TextStyle(
                  fontFamily: 'Oxygen',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
          choice,
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
            child: batting,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: bowling,
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      setState(() {
        isTossing = false;
        tossResult = tossResultfun(context);
        color = Colors.white;
        if (toss(context)) {
          won = "You won the toss.";
          choice = Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              'What would you like to do?',
              style: TextStyle(
                  fontFamily: 'Oxygen',
                  fontSize: 20,
                  color: Color.fromRGBO(255, 255, 255, 0.5)),
            ),
          );
          batting = InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MatchScreen()));
            },
            child: buttons('T', 'Batting'),
            borderRadius: BorderRadius.circular(20),
          );
          bowling = InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MatchScreen()));
            },
            child: buttons('B', 'Bowling'),
            borderRadius: BorderRadius.circular(20),
          );
        } else {
          if (opponentSelection() == 0) {
            opponentChoice = 'Batting';
            youHaveTo = 'Bowler';
          } else {
            opponentChoice = 'Bowling';
            youHaveTo = 'Batsman';
          }
          won = "You lose the toss.";
          choice = Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: RichText(
                text: TextSpan(
                    style: TextStyle(
                        fontFamily: 'Oxygen',
                        fontSize: 20,
                        color: Colors.white),
                    children: <TextSpan>[
                  TextSpan(text: 'Opponent Selected '),
                  TextSpan(
                      text: opponentChoice,
                      style: TextStyle(
                          fontFamily: 'Oxygen',
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold))
                ])),
          );
          batting = RichText(
              text: TextSpan(
                  style: TextStyle(
                      fontFamily: 'Oxygen', fontSize: 20, color: Colors.white),
                  children: <TextSpan>[
                TextSpan(text: 'You will play as  '),
                TextSpan(
                    text: youHaveTo,
                    style: TextStyle(
                        fontFamily: 'Oxygen',
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold))
              ]));
          bowling = InkWell(
            borderRadius: BorderRadius.circular(20),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MatchScreen()));
            },
            child: Container(
              height: 80,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                      color: Color.fromRGBO(255, 255, 255, 0.5), width: 3)),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'GOT IT',
                      style: TextStyle(
                          fontSize: 24,
                          color: Color.fromRGBO(255, 255, 255, 0.5)),
                    )
                  ],
                ),
              ),
            ),
          );
        }
      });
    });
  }
}

bool toss(context) {
  final appState = Provider.of<AppState>(context);
  int total = appState.getSelectedInput;
  int input = appState.getOddOrEven;
  int result = total % 2;
  if (input == result)
    return true;
  else
    return false;
}

String tossResultfun(context) {
  final appState = Provider.of<AppState>(context);
  if (appState.getSelectedInput % 2 == 0)
    return 'EVEN';
  else
    return 'ODD';
}

int opponentSelection() {
  int min = 0;
  int max = 2;
  final rdm = new Random();
  int rnd = min + rdm.nextInt(max - min);
  return rnd;
}
