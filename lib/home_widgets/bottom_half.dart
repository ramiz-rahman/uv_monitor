import 'package:flutter/material.dart';

import 'package:uv_monitor/home_widgets/button.dart';
import 'package:uv_monitor/home_widgets/geolocation.dart';
import 'package:uv_monitor/state_container.dart';

class BottomHalf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            _Buttons(),
            Geolocation(),
          ],
        ),
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Button(
            text: 'Refresh',
            color: Color(0xFF2B8700),
            onPressed: StateContainer.of(context).refresh,
          ),
          Button(
            text: 'Logout',
            color: Color(0xFF870008),
          ),
        ],
      ),
    );
  }
}
