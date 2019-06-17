import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:hand_cricket/buttons/button.dart';
import 'package:hand_cricket/app_state.dart';
import 'package:provider/provider.dart';
import 'package:toast/toast.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return WillPopScope(
      onWillPop: () async {
        Toast.show('You cannot go back now', context,
            duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
        return false;
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text('MATCH CONCLUDED',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(0, 0, 0, 0.2))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Text('FINAL SCORES',
                    style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(0, 0, 0, 0.2),
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      appState.getUserScore.toString(),
                      style: TextStyle(
                          fontSize: 36,
                          color: Color.fromRGBO(221, 63, 63, 100)),
                    ),
                    Text(
                      appState.getCpuScore.toString(),
                      style: TextStyle(
                          fontSize: 36,
                          color: Color.fromRGBO(106, 106, 106, 100)),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'YOU',
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.15)),
                  ),
                  Text(
                    'CPU',
                    style: TextStyle(
                        fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.15)),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Text('RUN DIFFERENCE',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(0, 0, 0, 0.2))),
              ),
              difference(context),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text('RESULT',
                    style: TextStyle(
                        fontSize: 18, color: Color.fromRGBO(0, 0, 0, 0.2))),
              ),
              winner(context),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 40.0, left: 20.0, right: 20.0),
                      child: InkWell(
                          onTap: () {
                            appState.setCpuScore(0);
                            appState.setUserScore(0);
                            appState.setFirstBattingCompleted(false);
                            appState.setCpuOvers('0.0');
                            appState.setUserOvers('0.0');
                            appState.setBallsCompleted(0);
                            appState.setCurrentCpuInput(0);
                            appState.setCurrentUserInput(0);
                            appState.setGetBack(false);
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()));
                          },
                          borderRadius: BorderRadius.circular(20),
                          child: buttons(
                              'N',
                              'New Game',
                              Color.fromRGBO(255, 50, 50, 0.5),
                              Color.fromRGBO(229, 109, 109, 100),
                              Color.fromRGBO(255, 211, 211, 100),
                              Color.fromRGBO(221, 63, 63, 1))),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Thank you for playing.',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(111, 111, 111, 100)),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 5.0, left: 20.0, bottom: 30.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Column(
                          children: <Widget>[
                            Text(
                              'Developed by Siva Perumal K',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(111, 111, 111, 100)),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget difference(context) {
  final appState = Provider.of<AppState>(context);
  int runDifference = (appState.getUserScore - appState.getCpuScore);
  int finalRunDifference;
  if (runDifference < 0) {
    finalRunDifference = -(appState.getUserScore - appState.getCpuScore);
  } else {
    finalRunDifference = (appState.getUserScore - appState.getCpuScore);
  }
  return Text(finalRunDifference.toString() + ' runs',
      style:
          TextStyle(fontSize: 36, fontFamily: 'Oxygen', color: Colors.black));
}

Widget winner(context) {
  final appState = Provider.of<AppState>(context);
  if (appState.getCpuScore > appState.getUserScore) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text('Opponent wins the match.',
          style:
              TextStyle(fontSize: 24, color: Color.fromRGBO(51, 51, 51, 100))),
    );
  } else if (appState.getUserScore > appState.getCpuScore) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text('You win the match.',
          style:
              TextStyle(fontSize: 24, color: Color.fromRGBO(51, 51, 51, 100))),
    );
  } else {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Text('Match was drawn.',
          style:
              TextStyle(fontSize: 24, color: Color.fromRGBO(51, 51, 51, 100))),
    );
  }
}
