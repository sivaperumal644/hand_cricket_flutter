import 'package:flutter/material.dart';


class TossingPage extends StatelessWidget {
  bool isTossing = true;
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
                  child: isTossing == true ? CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                    strokeWidth: 5.0,
                  ): null,
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
                      border: Border.all(
                          color: Color.fromRGBO(255, 255, 255, 0.5), width: 5)),
                ),
              ),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Text('TOSSING', style: TextStyle(fontFamily: 'Oxygen',fontSize: 24, color: Color.fromRGBO(255, 255, 255, 0.5)),),
              ))
            ]),
          )
        ],
      ),
    );
  }
}
