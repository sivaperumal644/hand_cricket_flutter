import 'package:flutter/material.dart';
import 'about_app_screen.dart';
import 'package:hand_cricket/buttons/button.dart';
import 'rules_screen.dart';
import 'toss_screen.dart';
import 'package:hand_cricket/app_state.dart';
import 'package:provider/provider.dart';
import 'dart:io';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        exit(0);
        return true;
      },
      child: Scaffold(
          backgroundColor: Color.fromRGBO(221, 63, 63, 50),
          body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 41, 0, 0),
                  child: Text('New Game',
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.6),
                          fontSize: 36)),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      noOfOverButton(context, 30, '5', '5 Over Game'),
                      noOfOverButton(context, 60, '10', '10 Over Game'),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Rules()));
                        },
                        child: Text(
                          'READ THE RULES',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 32.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AboutApp()));
                          },
                          child: Text(
                            'ABOUT APP',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 0.5),
                                fontSize: 24),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}

Widget noOfOverButton(context, overs, icon, content) {
  final appState = Provider.of<AppState>(context);
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: InkWell(
      onTap: () {
        appState.setTotalOvers(overs);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => TossPage()));
      },
      child: buttons(icon, content, Color.fromRGBO(255, 255, 255, 0.5),
          Color.fromRGBO(229, 109, 109, 100), Colors.white, Colors.white),
      borderRadius: BorderRadius.circular(24),
    ),
  );
}
