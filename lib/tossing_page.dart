import 'package:flutter/material.dart';
import 'buttons/button.dart';
import 'match_screen.dart';

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
  String selectChoice = "";
  Widget batting = Container();
  Widget bowling = Container();

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
                  fontFamily: 'Oxygen', fontSize: 24, color: Colors.white),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              selectChoice,
              style: TextStyle(
                  fontFamily: 'Oxygen',
                  fontSize: 20,
                  color: Color.fromRGBO(255, 255, 255, 0.5)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
            child: batting,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: bowling,
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
        tossResult = 'ODD';
        color = Colors.white;
        won = "You won the toss.";
        selectChoice = "What would you like to do?";
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
      });
    });
  }
}
