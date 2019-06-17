import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'package:hand_cricket/app_state.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AppState>(
      builder: (_) => AppState(),
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Oxygen'),
        home: Scaffold(
          body: SplashScreen(),
        ),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => HomeScreen(),
          ));
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/app_logo.png', height: 120, width: 120,),
            Padding(
              padding: EdgeInsets.only(top: 143.5),
              child: Text(
                'Hand Cricket',
                style: TextStyle(
                    color: Colors.black, fontSize: 36, fontFamily: 'Oxygen'),
              ),
            ),
          ],
        )
      ],
    );
  }
}
