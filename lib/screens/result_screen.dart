import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:hand_cricket/buttons/button.dart';

class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 50.0),
                child: Text('MATCH CONCLUDED',
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Oxygen-bold',
                        color: Color.fromRGBO(0, 0, 0, 0.2))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Text('FINAL SCORES',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(0, 0, 0, 0.2),
                        fontFamily: 'Oxygen')),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      '100',
                      style: TextStyle(
                          fontFamily: 'Oxygen',
                          fontSize: 36,
                          color: Color.fromRGBO(221, 63, 63, 100)),
                    ),
                    Text(
                      '100',
                      style: TextStyle(
                          fontFamily: 'Oxygen',
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
                        fontFamily: 'Oxygen',
                        fontSize: 16,
                        color: Color.fromRGBO(0, 0, 0, 0.15)),
                  ),
                  Text(
                    'CPU',
                    style: TextStyle(
                        fontFamily: 'Oxygen',
                        fontSize: 16,
                        color: Color.fromRGBO(0, 0, 0, 0.15)),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0),
                child: Text('RUN DIFFERENCE',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Oxygen',
                        color: Color.fromRGBO(0, 0, 0, 0.2))),
              ),
              Text('0 runs',
                  style: TextStyle(
                      fontSize: 36, fontFamily: 'Oxygen', color: Colors.black)),
              Padding(
                padding: const EdgeInsets.only(top: 16.0),
                child: Text('RESULT',
                    style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Oxygen',
                        color: Color.fromRGBO(0, 0, 0, 0.2))),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text('Opponent wins the match.',
                    style: TextStyle(
                        fontFamily: 'Oxygen',
                        fontSize: 24,
                        color: Color.fromRGBO(51, 51, 51, 100))),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
                child: InkWell(
                    onTap: () {
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
              Padding(
                padding: const EdgeInsets.only(top: 60.0, left: 20.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Thank you for playing.',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Oxygen',
                            color: Color.fromRGBO(111, 111, 111, 100)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5.0, left: 20.0),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Developed by Siva Perumal K',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Oxygen',
                            color: Color.fromRGBO(111, 111, 111, 100)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
