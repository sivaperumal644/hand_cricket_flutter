import 'package:flutter/material.dart';

class AboutApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 98.0),
            child: Center(
                child: Image.asset(
              'images/app_logo.png',
              height: 120,
              width: 120,
            )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Text('Hand Cricket',
                style: TextStyle(fontSize: 36, color: Colors.black)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: Text(
              'Developed By',
              style: TextStyle(fontSize: 18, color: Colors.black),
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset(
                    'images/flutter_icon.png',
                    width: 40,
                    height: 40,
                  ),
                ),
                RichText(
                  text: TextSpan(
                      style: TextStyle(fontSize: 24),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Made with',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            text: ' Flutter',
                            style: TextStyle(
                                color: Color.fromRGBO(51, 153, 255, 100)))
                      ]),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 42.0),
            child: Text('Design By Roshan G Rahman',
                style: TextStyle(
                    color: Color.fromRGBO(51, 153, 255, 100), fontSize: 14)),
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
                    child: FlatButton(
                      child: Text('GOT IT',
                          style: TextStyle(
                              fontSize: 24,
                              color: Color.fromRGBO(221, 63, 63, 100))),
                    ),
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
