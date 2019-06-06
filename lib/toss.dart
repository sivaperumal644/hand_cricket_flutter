import 'package:flutter/material.dart';
import 'buttons/button.dart';
import 'toss_selection.dart';

class TossPage extends StatelessWidget {
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
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 75, 20, 20),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TossSelection()));
                    },
                    child: buttons('O', 'Odd')),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TossSelection()));
                    },
                    child: buttons('E', 'Even')),
              )
            ],
          ),
        ],
      ),
    );
  }
}
