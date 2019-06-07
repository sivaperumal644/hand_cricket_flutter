import 'package:flutter/material.dart';

class Rules extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Center(
                child: Text('RULES',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 36,
                        fontFamily: 'Oxygen',
                        fontWeight: FontWeight.bold))),
          ),
          Padding(
            padding: const EdgeInsets.only(top:16.0, left: 32.0, right: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:8.0),
                  child: Text('1. Select the Overs.', style: TextStyle(fontFamily: 'Oxygen', fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('2. Select odd or even in the toss.', style: TextStyle(fontFamily: 'Oxygen', fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('3. Select any number from 0 to 6.', style: TextStyle(fontFamily: 'Oxygen', fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      '4. If you have won the toss, select your option of batting or bowling.', style: TextStyle(fontFamily: 'Oxygen', fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('5. If CPU wins the toss, CPU selects the option.', style: TextStyle(fontFamily: 'Oxygen', fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                      '6. The batting and bowling will go on till the overs you have selected or till the batsman is dismissed.', style: TextStyle(fontFamily: 'Oxygen', fontSize: 20),),
                ),
              ],
            ),
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
                    child: Center(
                      child: Text('GOT IT',
                          style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'Oxygen',
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
