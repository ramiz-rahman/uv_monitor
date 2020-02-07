import 'package:flutter/material.dart';

class UVIndex extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          _Index('5.9678'),
          _Label(),
        ],
      ),
    );
  }
}

class _Index extends StatelessWidget {
  String index;
  _Index(this.index);

  @override
  Widget build(BuildContext context) {
    return Text(
      index,
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
