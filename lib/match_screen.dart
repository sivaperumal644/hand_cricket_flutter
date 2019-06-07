import 'package:flutter/material.dart';
import 'package:hand_cricket/buttons/input_button.dart';

class MatchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                            '0.0',
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
                            '100',
                            style: TextStyle(
                                fontFamily: 'Oxygen',
                                fontSize: 24,
                                color: Color(0xffDD3F3F)),
                          ),
                        )
                      ],
                    )
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
                            '0.0',
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
                            '100',
                            style: TextStyle(
                                fontFamily: 'Oxygen',
                                fontSize: 24,
                                color: Color.fromRGBO(119, 119, 119, 1)),
                          ),
                        )
                      ],
                    )
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
                        Material(
                            type: MaterialType.transparency,
                            child: InkWell(
                              onTap: () {},
                              child: inputButton('6'),
                              borderRadius: BorderRadius.circular(60),
                            )),
                        Material(
                            type: MaterialType.transparency,
                            child: InkWell(
                              onTap: () {},
                              child: inputButton('5'),
                              borderRadius: BorderRadius.circular(60),
                            )),
                        Material(
                            type: MaterialType.transparency,
                            child: InkWell(
                              onTap: () {},
                              child: inputButton('4'),
                              borderRadius: BorderRadius.circular(60),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Material(
                            type: MaterialType.transparency,
                            child: InkWell(
                              onTap: () {},
                              child: inputButton('3'),
                              borderRadius: BorderRadius.circular(60),
                            )),
                        Material(
                            type: MaterialType.transparency,
                            child: InkWell(
                              onTap: () {},
                              child: inputButton('2'),
                              borderRadius: BorderRadius.circular(60),
                            )),
                        Material(
                            type: MaterialType.transparency,
                            child: InkWell(
                              onTap: () {},
                              child: inputButton('1'),
                              borderRadius: BorderRadius.circular(60),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Material(
                            type: MaterialType.transparency,
                            child: InkWell(
                              onTap: () {},
                              child: inputButton('0'),
                              borderRadius: BorderRadius.circular(60),
                            ))
                      ],
                    ),
                  )
                ],
              ),
            ))
      ]),
    );
  }
}
