import 'package:flutter/material.dart';

class MainBody extends StatelessWidget {
  final _state;

  const MainBody({state}) : _state = state;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
          Icons.maps_home_work_rounded,
          color: Colors.black,
          size: _state.size,
        ),
        
    );
  }
}
