import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 98.0),
            child: Center(child: Image.asset('images/Oval.png')),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Text('Hand Cricket',
                style: TextStyle(
                    fontFamily: 'Oxygen', fontSize: 36, color: Colors.black)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Text(
              'Developed By',
              style: TextStyle(
                  fontFamily: 'Oxygen', fontSize: 18, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text('Siva Perumal K',
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: RichText(
              text: TextSpan(
                  style: TextStyle(fontSize: 24, fontFamily: 'Oxygen'),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Made with',
                        style: TextStyle(color: Colors.black)),
                    TextSpan(
                        text: ' Flutter',
                        style:
                            TextStyle(color: Color.fromRGBO(51, 153, 255, 100)))
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 42.0),
            child: Text('Design By Roshan G Rahman',
                style: TextStyle(
                    color: Color.fromRGBO(51, 153, 255, 100),
                    fontFamily: 'Oxygen',
                    fontSize: 14)),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 32.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text('GOT IT',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Oxygen',
                            color: Color.fromRGBO(221, 63, 63, 100))),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
