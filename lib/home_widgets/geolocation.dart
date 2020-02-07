import 'package:flutter/material.dart';

class Geolocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        _Text("latitudde: 3.12773"),
        _Text("longitude: 101.594965"),
      ],
    );
  }
}

final textStyle = TextStyle(
  fontSize: 18,
  height: 1.5,
  fontWeight: FontWeight.w500,
  color: Color(0xFFFFFFFF),
);

class _Text extends StatelessWidget {
  String text;
  _Text(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(
      this.text,
      textAlign: TextAlign.center,
      style: textStyle,
    );
  }
}
