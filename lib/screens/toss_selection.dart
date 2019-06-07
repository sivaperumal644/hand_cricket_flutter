import 'package:flutter/material.dart';
import 'package:hand_cricket/buttons/input_button.dart';
import 'tossing_page.dart';

class TossSelection extends StatelessWidget {
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
                      color: Color.fromRGBO(255, 255, 255, 0.5)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0, left: 20.0),
                child: Text(
                  'Select a number',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.5),
                      fontFamily: 'Oxygen',
                      fontSize: 36),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 75.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(onTap:(){
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => TossingPage()
                      ));
                    },child: inputButton('6'), borderRadius: BorderRadius.circular(40)),
                    InkWell(onTap:(){},child: inputButton('5'), borderRadius: BorderRadius.circular(40)),
                    InkWell(onTap:(){},child: inputButton('4'), borderRadius: BorderRadius.circular(40))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(onTap:(){},child: inputButton('3'), borderRadius: BorderRadius.circular(40)),
                    InkWell(onTap:(){},child: inputButton('2'), borderRadius: BorderRadius.circular(40)),
                    InkWell(onTap:(){},child: inputButton('1'), borderRadius: BorderRadius.circular(40)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 45.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(onTap:(){},child: inputButton('0'), borderRadius: BorderRadius.circular(40)),
                  ],
                ),
              )
            ]));
  }
}
