import 'package:flutter/material.dart';

import 'package:uv_monitor/uv_service.dart';

class _InheritedStateContainer extends InheritedWidget {
  // Data is the entire state. In our case just 'UV'
  final StateContainerState data;

  // Must pass through a child and the state.
  _InheritedStateContainer({
    Key key,
    @required this.data,
    @required Widget child,
  }) : super(key: key, child: child);

  // This is a built in method which is used to check if
  // any state has changed. If not, no reason to rebuild all the widgets
  // that rely on the state.
  @override
  bool updateShouldNotify(_InheritedStateContainer old) => true;
}

class StateContainer extends StatefulWidget {
  // A child must be passed through
  final Widget child;
  final UVService uv_service;

  StateContainer({
    @required this.child,
    this.uv_service,
  });

  // It basically says 'get the data from the widget of this type.
  static StateContainerState of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(_InheritedStateContainer)
            as _InheritedStateContainer)
        .data;
  }

  @override
  StateContainerState createState() => new StateContainerState();
}

class StateContainerState extends State<StateContainer> {
  // Whichever properties you wanna pass around your app as state
  UVService uv_service;

  void refresh() {
    uv_service = new UVService();
    setState(() {
      uv_service = uv_service;
    });
  }

  @override
  void initState() {
    super.initState();
    uv_service = new UVService();
  }

  // Simple build method that just passes this state through
  // your InheritedWidget
  @override
  Widget build(BuildContext context) {
    return new _InheritedStateContainer(
      data: this,
      child: widget.child,
    );
  }
}
