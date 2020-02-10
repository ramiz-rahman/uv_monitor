import 'package:flutter/material.dart';

class UVIndex extends StatelessWidget {
  double index;
  String datetime;
  UVIndex({this.index, this.datetime});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          _Index(index: this.index),
          _Label(),
          _Datetime(datetime: this.datetime),
        ],
      ),
    );
  }
}

class _Index extends StatelessWidget {
  double index;
  _Index({this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      "${this.index}",
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 64,
        height: 1.5,
        fontWeight: FontWeight.w500,
        color: Color(0xFF302EAE),
      ),
    );
  }
}

class _Label extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'UV index',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 36,
        height: 1.5,
        fontWeight: FontWeight.w500,
        color: Color(0xFF676767),
      ),
    );
  }
}

class _Datetime extends StatelessWidget {
  String datetime;

  _Datetime({this.datetime});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 40),
      child: Text(
        datetime,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          height: 1.5,
          color: Color(0xFF676767),
        ),
      ),
    );
  }
}
