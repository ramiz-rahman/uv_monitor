import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

class CurrentDatetime extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final formatter = DateFormat('MMM d, K:mm a', 'en_US');
    final date = DateTime.now();
    final datetimeString = formatter.format(date);

    return Text(
      datetimeString,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: 18,
        height: 1.5,
        color: Color(0xFF676767),
      ),
    );
  }
}
