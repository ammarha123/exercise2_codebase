import 'package:exercise1/float.dart';
import 'package:flutter/material.dart';

import 'main_appbar.dart';
import 'main_body.dart';
import 'main_bottom_bar.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Color _color = Colors.blue;

  get color => _color;
  set color(value) => setState(
      () => _color = value); // operation syntax style:  color = Colors.red;
  void assignColor(value) => setState(
      () => _color = value); 
      
  bool _value = true;
  bool _value2 = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            CheckboxListTile(
              title: const Text('Allow resize?'),
              controlAffinity: ListTileControlAffinity.trailing,
                  selected: _value,
                  value: _value,
                  onChanged: (value){
                    setState(() {
                _value = value!;
              });    
            },
            ),
            CheckboxListTile(
              title: const Text('Allow change primer color?'),
              controlAffinity: ListTileControlAffinity.platform,
                  selected: _value2,
                  value: _value2,
                  onChanged: (value){
                    setState(() {
                _value2 = !_value2;
              });    
            },
            ),
          ]
            ),
         ),
        appBar: MainAppBar(),
        body: MainBody(), 
        floatingActionButton: Float(state: this),
        bottomNavigationBar: MainBottomBar()
      
    ),
    );
  }
}
