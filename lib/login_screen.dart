import 'package:flutter/material.dart';

import 'package:uv_monitor/svg_widgets/sun.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen();

  @override
  Widget build(BuildContext context) {
    final Widget headline = Container(
      padding: EdgeInsets.only(top: 29.0, bottom: 51.0),
      child: Text(
        "UV Monitor",
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 36,
          height: 1.5,
          color: Color(0xFFFC5B00),
        ),
      ),
    );

    final Widget loginButton = FlatButton(
      padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 24.0),
      color: Colors.blue,
      textColor: Colors.white,
      disabledColor: Colors.grey,
      disabledTextColor: Colors.black,
      splashColor: Colors.blueAccent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      onPressed: () {
        print("I was pressed");
      },
      child: Text(
        "Sign in with Google",
        style: TextStyle(
          fontSize: 14,
          height: 1.5,
        ),
      ),
    );

    final MyLogin = Container(
      constraints: BoxConstraints.expand(),
      color: Color(0xFFFFF0E4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SunSVG,
          headline,
          loginButton,
        ],
      ),
    );

    return Scaffold(body: MyLogin);
  }
}
