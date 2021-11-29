import 'package:flutter/material.dart';

import 'main_appbar.dart';

// Dependency injection

class Float extends StatelessWidget {
  final _state;

  const Float({state}) : _state = state;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        MainAppBar(size: 100, state: _state),
        MainAppBar(size: 100, state: _state),
        MainAppBar(size: 300, state: _state),
        MainAppBar(size: 500, state: _state),
        MainAppBar(size: 200, state: _state),
      ],
    );
  }
}
