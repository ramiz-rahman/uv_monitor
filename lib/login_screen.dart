import 'package:flutter/material.dart';

import 'package:uv_monitor/svg_widgets/sun.dart';
import 'package:uv_monitor/login_widgets/headline.dart';
import 'package:uv_monitor/login_widgets/login_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen();

  @override
  Widget build(BuildContext context) {
    final MyLogin = Container(
      constraints: BoxConstraints.expand(),
      color: Color(0xFFFFF0E4),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SunSVG,
          Headline,
          LoginButton,
        ],
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: MyLogin,
      ),
    );
  }
}
