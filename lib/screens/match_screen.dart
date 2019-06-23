import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hand_cricket/buttons/input_button.dart';
import 'result_screen.dart';
import 'package:provider/provider.dart';
import 'package:hand_cricket/app_state.dart';
import 'dart:math';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toast/toast.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';

Animation userAnimation, cpuAnimation, inputAnimation, inputFadeAnimation;
AnimationController userAnimationController,
    cpuAnimationController,
    inputAnimationController,
    inputFadeAnimationController;
bool isInputVisible;

final oversBowl = [
  '0.0',
  '0.1',
  '0.2',
  '0.3',
  '0.4',
  '0.5',
  '1.0',
  '1.1',
  '1.2',
  '1.3',
  '1.4',
  '1.5',
  '2.0',
  '2.1',
  '2.2',
  '2.3',
  '2.4',
  '2.5',
  '3.0',
  '3.1',
  '3.2',
  '3.3',
  '3.4',
  '3.5',
  '4.0',
  '4.1',
  '4.2',
  '4.3',
  '4.4',
  '4.5',
  '5.0',
  '5.1',
  '5.2',
  '5.3',
  '5.4',
  '5.5',
  '6.0',
  '6.1',
  '6.2',
  '6.3',
  '6.4',
  '6.5',
  '7.0',
  '7.1',
  '7.2',
  '7.3',
  '7.4',
  '7.5',
  '8.0',
  '8.1',
  '8.2',
  '8.3',
  '8.4',
  '8.5',
  '9.0',
  '9.1',
  '9.2',
  '9.3',
  '9.4',
  '9.5',
  '10.0'
];

final currentInputImage = [
  'images/zero.svg',
  'images/one.svg',
  'images/two.svg',
  'images/three.svg',
  'images/four.svg',
  'images/five.svg',
  'images/six.svg'
];

class MatchScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MatchScreenState();
  }
}

class MatchScreenState extends State<MatchScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width / 2;
    final screenHeight = MediaQuery.of(context).size.height - 90;
    final appState = Provider.of<AppState>(context);
    return WillPopScope(
      onWillPop: () async {
        Toast.show('You cannot go back now', context,
            duration: Toast.LENGTH_SHORT, gravity: Toast.BOTTOM);
        return false;
      },
      child: Scaffold(
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
                                  color: appState.getYouRedColor, fontSize: 18),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50.0),
                            child: Text('CPU',
                                style: TextStyle(
                                    color: Color.fromRGBO(57, 57, 57, 0.28),
                                    fontSize: 18)),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: appState.getShadowColor,
                        blurRadius: 20,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
              ),
              Row(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                          border: Border(
                              right: BorderSide(
                                  width: 2,
                                  color: Color.fromRGBO(0, 0, 0, 0.06)))),
                      width: screenWidth,
                      height: screenHeight,
                      child: displayMatch(
                          context,
                          this,
                          userAnimation,
                          userAnimationController,
                          -1.0,
                          appState.getUserOvers.toString(),
                          appState.getUserScore.toString(),
                          appState.getCurrentUserInput,
                          appState.getIsInputVisible,
                          appState.getYouRedColor,
                          appState.getScoreLightGray,
                          Color.fromRGBO(221, 63, 63, 100),
                          appState.getIsMatchStart)),
                  Container(
                      width: screenWidth,
                      height: screenHeight,
                      child: displayMatch(
                          context,
                          this,
                          cpuAnimation,
                          cpuAnimationController,
                          1.0,
                          appState.getCpuOvers.toString(),
                          appState.getCpuScore.toString(),
                          appState.getCurrentCpuInput,
                          appState.getIsInputVisible,
                          appState.getCpuGrayColor,
                          appState.getScoreLightGray,
                          Color.fromRGBO(119, 119, 119, 100),
                          appState.getIsMatchStart))
                ],
              )
            ],
          ),
          inputSelectionContainer(
              context,
              this,
              appState.getInputContainerStart,
              appState.getInputContainerEnd,
              inputAnimation,
              inputAnimationController)
        ]),
      ),
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
          appState.setIsInputVisible(true);
          appState.setCurrentUserInput(int.parse(input));
          appState.setInputContainerStart(0.0);
          appState.setInputContainerEnd(1.0);
          appState.setYouRedColor(Color.fromRGBO(221, 63, 63, 0.2));
          appState.setScoreLightGray(Color.fromRGBO(168, 168, 168, 0.2));
          appState.setCpuGrayColor(Color.fromRGBO(119, 119, 119, 0.2));
          appState.setShadowColor(Color.fromRGBO(193, 193, 193, 100));
          appState.setIsMatchStart(true);
          if (firstBattingCompleted == false) {
            firstBatting(context, int.parse(input));
          } else {
            secondBatting(context, int.parse(input));
          }
          Future.delayed(Duration(seconds: 2), () {
            appState.setIsInputVisible(false);
            appState.setInputContainerStart(1.0);
            appState.setInputContainerEnd(0.0);
            appState.setYouRedColor(Color.fromRGBO(221, 63, 63, 100));
            appState.setScoreLightGray(Color.fromRGBO(168, 168, 168, 100));
            appState.setCpuGrayColor(Color.fromRGBO(119, 119, 119, 100));
            appState.setShadowColor(Color.fromRGBO(255, 150, 150, 0.6));
          });
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
  Future.delayed(Duration(seconds: 2), () {
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
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (_) => AlertDialog(
                    title: Center(
                      child: Text("That's a Wicket",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold)),
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('CPU is out. You have to bat now.'),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RaisedButton(
                                color: Color.fromRGBO(221, 63, 63, 0.8),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Bat now',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              RaisedButton(
                                color: Color.fromRGBO(221, 63, 63, 0.8),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (context) => ResultPage()));
                                },
                                child: Text(
                                  'Exit Match',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ));
        }
      } else if (ballsCompleted == totalBalls - 1) {
        appState.setCpuScore(cpuScore + cpuInputScore);
        appState.setCpuOvers(oversBowl[ballsCompleted + 1]);
        appState.setFirstBattingCompleted(true);
        appState.setBallsCompleted(0);
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (_) => AlertDialog(
                  title: Center(
                      child: Text("End of innings.",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold))),
                  content: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text('CPU innings is over. You have to bat now.'),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            RaisedButton(
                              color: Color.fromRGBO(221, 63, 63, 0.8),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Bat now',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            RaisedButton(
                              color: Color.fromRGBO(221, 63, 63, 0.8),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => ResultPage()));
                              },
                              child: Text(
                                'Exit Match',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ));
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
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (_) => AlertDialog(
                    title: Center(
                      child: Text(
                        "That's a Wicket",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Text('You are out. You have to bowl now.'),
                        Padding(
                          padding: const EdgeInsets.only(top: 16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RaisedButton(
                                color: Color.fromRGBO(221, 63, 63, 0.8),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Bowl now',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              RaisedButton(
                                color: Color.fromRGBO(221, 63, 63, 0.8),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      CupertinoPageRoute(
                                          builder: (context) => ResultPage()));
                                },
                                child: Text(
                                  'Exit Match',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ));
        }
      } else if (ballsCompleted == totalBalls - 1) {
        appState.setUserScore(userScore + userInput);
        appState.setUserOvers(oversBowl[ballsCompleted + 1]);
        appState.setFirstBattingCompleted(true);
        appState.setBallsCompleted(0);
        showDialog(
            barrierDismissible: false,
            context: context,
            builder: (_) => AlertDialog(
                  title: Center(
                    child: Text("End of innings",
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold)),
                  ),
                  content: Column(
                    children: <Widget>[
                      Text('Your Batting is over. You have to bowl now.'),
                      Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                RaisedButton(
                                  color: Color.fromRGBO(221, 63, 63, 0.8),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    'Bowl now',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                RaisedButton(
                                  color: Color.fromRGBO(221, 63, 63, 0.8),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        CupertinoPageRoute(
                                            builder: (context) =>
                                                ResultPage()));
                                  },
                                  child: Text(
                                    'Exit Match',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ));
      }
    }
  });
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
  Future.delayed(Duration(seconds: 2), () {
    if (userOrCpu == 0) {
      if (ballsCompleted < totalBalls - 1) {
        if (userInput != cpuInputScore) {
          appState.setUserScore(userScore + userInput);
          appState.setBallsCompleted(ballsCompleted + 1);
          appState.setUserOvers(oversBowl[ballsCompleted + 1]);
          if (appState.getUserScore > appState.getCpuScore) {
            Navigator.push(
                context, CupertinoPageRoute(builder: (context) => ResultPage()));
          }
        } else if (userInput == cpuInputScore) {
          Navigator.push(
              context, CupertinoPageRoute(builder: (context) => ResultPage()));
        }
      } else if (ballsCompleted == totalBalls - 1) {
        appState.setUserScore(userScore + userInput);
        appState.setUserOvers(oversBowl[ballsCompleted + 1]);
        Navigator.push(
            context, CupertinoPageRoute(builder: (context) => ResultPage()));
      }
    } else {
      if (ballsCompleted < totalBalls - 1) {
        if (userInput != cpuInputScore) {
          appState.setCpuScore(cpuScore + cpuInputScore);
          appState.setBallsCompleted(ballsCompleted + 1);
          appState.setCpuOvers(oversBowl[ballsCompleted + 1]);
          if (appState.getCpuScore > appState.getUserScore) {
            Navigator.push(
                context, CupertinoPageRoute(builder: (context) => ResultPage()));
          }
        } else if (userInput == cpuInputScore) {
          appState.setBallsCompleted(0);
          appState.setCpuOvers(oversBowl[ballsCompleted + 1]);
          Navigator.push(
              context, CupertinoPageRoute(builder: (context) => ResultPage()));
        }
      } else if (ballsCompleted == totalBalls - 1) {
        appState.setCpuScore(cpuScore + cpuInputScore);
        appState.setCpuOvers(oversBowl[ballsCompleted + 1]);
        appState.setBallsCompleted(ballsCompleted + 1);
        Navigator.push(
            context, CupertinoPageRoute(builder: (context) => ResultPage()));
      }
    }
  });
}

int cpuInput() {
  int min = 0;
  int max = 7;
  final rdm = new Random();
  int rnd = min + rdm.nextInt(max - min);
  return rnd;
}

Widget displayMatch(
    context,
    vsync,
    user,
    userController,
    start,
    oversCompleted,
    runsScored,
    currentInput,
    isVisible,
    youColor,
    overTextColor,
    iconColor,
    isMatchStarted) {
  userController =
      AnimationController(duration: Duration(seconds: 1), vsync: vsync);

  user = Tween(begin: start, end: 0.0).animate(
      CurvedAnimation(parent: userController, curve: Curves.fastOutSlowIn));

  userController.forward();

  inputFadeAnimationController =
      AnimationController(duration: Duration(seconds: 1), vsync: vsync);
  inputFadeAnimation =
      Tween(begin: 1.0, end: 0.0).animate(inputFadeAnimationController);

  inputFadeAnimationController.forward();

  final width = MediaQuery.of(context).size.width;
  return Column(
    children: <Widget>[
      Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 32.0),
            child: Text(
              'OVERS',
              style: TextStyle(color: overTextColor, fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0, left: 16.0),
            child: Text(
              oversCompleted,
              style: TextStyle(fontSize: 24, color: youColor),
            ),
          )
        ],
      ),
      Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 24.0, top: 16.0),
            child: Text(
              'SCORE',
              style: TextStyle(color: overTextColor, fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0),
            child: Text(
              runsScored,
              style: TextStyle(fontSize: 24, color: youColor),
            ),
          )
        ],
      ),
      isMatchStarted
          ? isVisible
              ? AnimatedBuilder(
                  animation: userController,
                  builder: (context, child) {
                    return Transform(
                      transform: Matrix4.translationValues(
                          user.value * width, 0.0, 0.0),
                      child: Center(
                          child: Container(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 100.0),
                          child: SvgPicture.asset(
                            currentInputImage[currentInput],
                            color: iconColor,
                            width: 100.0,
                            height: 100.0,
                          ),
                        ),
                      )),
                    );
                  },
                )
              : FadeTransition(
                  opacity: inputFadeAnimation,
                  child: Center(
                      child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100.0),
                      child: SvgPicture.asset(
                        currentInputImage[currentInput],
                        color: iconColor,
                        width: 100.0,
                        height: 100.0,
                      ),
                    ),
                  )),
                )
          : Text('')
    ],
  );
}

Widget inputSelectionContainer(
    context, vsync, start, end, animation, animationController) {
  final height = 350;
  animationController =
      AnimationController(duration: Duration(seconds: 1), vsync: vsync);

  animation = Tween(begin: start, end: end).animate(CurvedAnimation(
      parent: animationController, curve: Curves.fastOutSlowIn));

  animationController.forward();
  return AnimatedBuilder(
    animation: animationController,
    builder: (context, child) {
      return Transform(
        transform:
            Matrix4.translationValues(0.0, animation.value * height, 0.0),
        child: Align(
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
            )),
      );
    },
  );
}
