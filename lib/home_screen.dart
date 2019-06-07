import 'package:flutter/material.dart';
import 'about_app.dart';
import 'buttons/button.dart';
import 'rules.dart';
import 'toss.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(221, 63, 63, 50),
        body: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(20, 41, 0, 0),
                child: Text('New Game',
                    style: TextStyle(
                        fontFamily: 'Oxygen',
                        color: Color.fromRGBO(255, 255, 255, 0.6),
                        fontSize: 36)),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TossPage()));
                        },
                        child: buttons('5', "5 Over Game"),
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TossPage()));
                        },
                        child: buttons('10', "10 Over Game"),
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Rules()));
                      },
                      child: Text(
                        'READ THE RULES',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Oxygen',
                            color: Color.fromRGBO(255, 255, 255, 0.5)),
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
                              fontFamily: 'Oxygen',
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
        ));
  }
}
