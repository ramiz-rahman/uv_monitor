import 'package:flutter/material.dart';

import 'package:uv_monitor/svg_widgets/shades.dart';
import 'package:uv_monitor/home_widgets/current_datetime.dart';
import 'package:uv_monitor/home_widgets/uv_index.dart';

class TopHalf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: _topContainer(),
    );
  }
}

class _topContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(32.0),
          ),
          color: Color(0xFFFFF0E4),
        ),
        child: _resultStack());
  }
}

class _resultStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          child: ShadesSVG,
        ),
        UVIndex(),
        Container(
          padding: EdgeInsets.only(top: 20),
          child: CurrentDatetime(),
        ),
      ],
    );
  }
}
