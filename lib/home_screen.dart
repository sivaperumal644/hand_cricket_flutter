import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(221, 63, 63, 50),
      body: Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(20,41,0,0),
            child: Text(
              'New Game',
              style: TextStyle(
                fontFamily: 'Oxygen',
                color: Color.fromRGBO(255,255,255,0.6),
                fontSize: 36
              )
            ),
          )
        ],
      ),
    )
    );
}

}