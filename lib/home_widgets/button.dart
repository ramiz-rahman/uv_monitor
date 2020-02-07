import 'package:flutter/material.dart';
// @required is defined in the meta.dart package
import 'package:meta/meta.dart';

class Button extends StatelessWidget {
  String text;
  Color color;
  Color splashColor;
  Color textColor = Colors.white;
  Button(
      {Key key,
      @required this.text,
      @required this.color,
      this.splashColor,
      this.textColor})
      : assert(text != null),
        assert(color != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(vertical: 18.0, horizontal: 24.0),
      color: this.color,
      textColor: this.textColor,
      splashColor: this.splashColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      onPressed: () {
        print(this.text + " was pressed");
      },
      child: Text(
        this.text,
        style: TextStyle(
          fontSize: 14,
          height: 1.5,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
