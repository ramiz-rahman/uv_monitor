import 'package:flutter/material.dart';

final Widget LoginButton = FlatButton(
  padding: EdgeInsets.symmetric(
    vertical: 18.0,
    horizontal: 24.0,
  ),
  color: Colors.blue,
  textColor: Colors.white,
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
