import 'package:flutter/material.dart';
import 'package:hand_cricket/buttons/input_button.dart';
import 'result_screen.dart';
import 'package:provider/provider.dart';
import 'package:hand_cricket/app_state.dart';
import 'dart:math';

final oversBowl = [
  '00.0',
  '00.1',
  '00.2',
  '00.3',
  '00.4',
  '00.5',
  '01.0',
  '01.1',
  '01.2',
  '01.3',
  '01.4',
  '01.5',
  '02.0',
  '02.1',
  '02.2',
  '02.3',
  '02.4',
  '02.5',
  '03.0',
  '03.1',
  '03.2',
  '03.3',
  '03.4',
  '03.5',
  '04.0',
  '04.1',
  '04.2',
  '04.3',
  '04.4',
  '04.5',
  '05.0',
  '05.1',
  '05.2',
  '05.3',
  '05.4',
  '05.5',
  '06.0',
  '06.1',
  '06.2',
  '06.3',
  '06.4',
  '06.5',
  '07.0',
  '07.1',
  '07.2',
  '07.3',
  '07.4',
  '07.5',
  '08.0',
  '08.1',
  '08.2',
  '08.3',
  '08.4',
  '08.5',
  '09.0',
  '09.1',
  '09.2',
  '09.3',
  '09.4',
  '09.5',
  '10.0'
];

class MatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              height: 90,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Text(
                            'YOU',
                            style: TextStyle(
                                color: Color(0xffDD3F3F),
                                fontFamily: 'Oxygen',
                                fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 50.0),
                          child: Text('CPU',
                              style: TextStyle(
                                  color: Color.fromRGBO(57, 57, 57, 0.5),
                                  fontFamily: 'Oxygen',
                                  fontSize: 18)),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(255, 150, 150, 0.6),
                  blurRadius: 20,
                ),
              ], borderRadius: BorderRadius.circular(20), color: Colors.white),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 32.0, top: 32.0),
                          child: Text(
                            'OVERS',
                            style: TextStyle(
                                color: Color(0xffA8A8A8),
                                fontFamily: 'Oxygen',
                                fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0, left: 16.0),
                          child: Text(
                            appState.getUserOvers,
                            style: TextStyle(
                                fontFamily: 'Oxygen',
                                fontSize: 24,
                                color: Color(0xffDD3F3F)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 32.0, top: 16.0),
                          child: Text(
                            'SCORE',
                            style: TextStyle(
                                color: Color(0xffA8A8A8),
                                fontFamily: 'Oxygen',
                                fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 14.0, left: 16.0),
                          child: Text(
                            appState.getUserScore.toString(),
                            style: TextStyle(
                                fontFamily: 'Oxygen',
                                fontSize: 24,
                                color: Color(0xffDD3F3F)),
                          ),
                        )
                      ],
                    ),
                    Text(appState.getCurrentUserInput.toString())
                  ],
                ),
                Container(
                  width: 3,
                  height: 400,
                  color: Color.fromRGBO(0, 0, 0, 0.08),
                ),
                Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 32.0, right: 16.0),
                          child: Text(
                            'OVERS',
                            style: TextStyle(
                                color: Color(0xffA8A8A8),
                                fontFamily: 'Oxygen',
                                fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 30.0, right: 32.0),
                          child: Text(
                            appState.getCpuOvers,
                            style: TextStyle(
                                fontFamily: 'Oxygen',
                                fontSize: 24,
                                color: Color.fromRGBO(119, 119, 119, 1)),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 16.0, right: 16.0),
                          child: Text(
                            'SCORE',
                            style: TextStyle(
                                color: Color(0xffA8A8A8),
                                fontFamily: 'Oxygen',
                                fontSize: 14),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 14.0, right: 32.0),
                          child: Text(
                            appState.getCpuScore.toString(),
                            style: TextStyle(
                                fontFamily: 'Oxygen',
                                fontSize: 24,
                                color: Color.fromRGBO(119, 119, 119, 1)),
                          ),
                        )
                      ],
                    ),
                    Text(appState.getCurrentCpuInput.toString())
                  ],
                ),
              ],
            ),
          ],
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 350,
              decoration: BoxDecoration(
                  color: Color(0xffDD3F3F),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 22.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        inputSelection('6', context),
                        inputSelection('5', context),
                        inputSelection('4', context)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        inputSelection('3', context),
                        inputSelection('2', context),
                        inputSelection('1', context)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[inputSelection('0', context)],
                    ),
                  )
                ],
              ),
            ))
      ]),
    );
  }
}

Widget inputSelection(String input, context) {
  final appState = Provider.of<AppState>(context);
  bool firstBattingCompleted = appState.getFirstBattingCompleted;
  return Material(
      type: MaterialType.transparency,
      child: InkWell(
        onTap: () {
          appState.setCurrentUserInput(int.parse(input));
          if (firstBattingCompleted == false) {
            firstBatting(context, int.parse(input));
          } else {
            secondBatting(context, int.parse(input));
          }
        },
        child: inputButton(input),
        borderRadius: BorderRadius.circular(60),
      ));
}

void firstBatting(context, userInput) {
  final appState = Provider.of<AppState>(context);
  int userOrCpu = appState.getBattingOrBowling;
  int totalBalls = appState.getTotalOvers;
  int cpuScore = appState.getCpuScore;
  int userScore = appState.getUserScore;
  int ballsCompleted = appState.getBallsCompleted;
  int cpuInputScore = cpuInput();
  appState.setCurrentCpuInput(cpuInputScore);
  if (userOrCpu == 0) {
    if (ballsCompleted < totalBalls - 1) {
      if (userInput != cpuInputScore) {
        appState.setCpuScore(cpuScore + cpuInputScore);
        appState.setBallsCompleted(ballsCompleted + 1);
        appState.setCpuOvers(oversBowl[ballsCompleted + 1]);
      } else if (userInput == cpuInputScore) {
        appState.setBallsCompleted(0);
        appState.setFirstBattingCompleted(true);
        appState.setCpuOvers(oversBowl[ballsCompleted + 1]);
      }
    } else if (ballsCompleted == totalBalls - 1) {
      appState.setCpuScore(cpuScore + cpuInputScore);
      appState.setCpuOvers(oversBowl[ballsCompleted + 1]);
      appState.setFirstBattingCompleted(true);
      appState.setBallsCompleted(0);
    }
  } else {
    if (ballsCompleted < totalBalls - 1) {
      if (userInput != cpuInputScore) {
        appState.setUserScore(userScore + userInput);
        appState.setBallsCompleted(ballsCompleted + 1);
        appState.setUserOvers(oversBowl[ballsCompleted + 1]);
      } else if (userInput == cpuInputScore) {
        appState.setFirstBattingCompleted(true);
        appState.setBallsCompleted(0);
        appState.setUserOvers(oversBowl[ballsCompleted + 1]);
      }
    } else if (ballsCompleted == totalBalls - 1) {
      appState.setUserScore(userScore + userInput);
      appState.setUserOvers(oversBowl[ballsCompleted + 1]);
      appState.setFirstBattingCompleted(true);
      appState.setBallsCompleted(0);
    }
  }
}

void secondBatting(context, userInput) {
  final appState = Provider.of<AppState>(context);
  int userOrCpu = appState.getBattingOrBowling;
  int totalBalls = appState.getTotalOvers;
  int cpuScore = appState.getCpuScore;
  int userScore = appState.getUserScore;
  int ballsCompleted = appState.getBallsCompleted;
  int cpuInputScore = cpuInput();
  appState.setCurrentCpuInput(cpuInputScore);
  if (userOrCpu == 0) {
    if (ballsCompleted < totalBalls - 1) {
      if (userInput != cpuInputScore) {
        appState.setUserScore(userScore + userInput);
        appState.setBallsCompleted(ballsCompleted + 1);
        appState.setUserOvers(oversBowl[ballsCompleted + 1]);
        if (appState.getUserScore > appState.getCpuScore) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ResultPage()));
        }
      } else if (userInput == cpuInputScore) {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResultPage()));
      }
    } else if (ballsCompleted == totalBalls - 1) {
      appState.setUserScore(userScore + userInput);
      appState.setUserOvers(oversBowl[ballsCompleted + 1]);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ResultPage()));
    }
  } else {
    if (ballsCompleted < totalBalls - 1) {
      if (userInput != cpuInputScore) {
        appState.setCpuScore(cpuScore + cpuInputScore);
        appState.setBallsCompleted(ballsCompleted + 1);
        appState.setCpuOvers(oversBowl[ballsCompleted + 1]);
        if (appState.getCpuScore > appState.getUserScore) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ResultPage()));
        }
      } else if (userInput == cpuInputScore) {
        appState.setBallsCompleted(0);
        appState.setCpuOvers(oversBowl[ballsCompleted + 1]);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ResultPage()));
      }
    } else if (ballsCompleted == totalBalls - 1) {
      appState.setCpuScore(cpuScore + cpuInputScore);
      appState.setCpuOvers(oversBowl[ballsCompleted + 1]);
      appState.setBallsCompleted(ballsCompleted + 1);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ResultPage()));
    }
  }
}

int cpuInput() {
  int min = 0;
  int max = 7;
  final rdm = new Random();
  int rnd = min + rdm.nextInt(max - min);
  return rnd;
}
