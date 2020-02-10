import 'package:flutter/material.dart';

import 'package:uv_monitor/home_widgets/top_half.dart';
import 'package:uv_monitor/home_widgets/bottom_half.dart';
import 'package:uv_monitor/state_container.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final HomeBody = Container(
      constraints: BoxConstraints.expand(),
      color: Color(0xFF371502),
      child: StateContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TopHalf(),
            BottomHalf(),
          ],
        ),
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: HomeBody,
      ),
    );
  }
}
