

import 'package:flutter/material.dart';

class MainBottomBar extends StatefulWidget {
  @override
  
  _MainBottomBarState createState() => _MainBottomBarState();
}

class _MainBottomBarState extends State<MainBottomBar> {
  double currentvalue = 100;
  double currentvalue2 = 100;
  double currentvalue3 = 100;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180.0,
      child: Column(
        children: <Widget>[
          Row(
          mainAxisSize: MainAxisSize.max,
             mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child:
          Slider(
            value: currentvalue,
            min: 0.0,
            max: 255.0,
             label: currentvalue.round().toString(),
      onChanged: (value){
       setState(() {
          currentvalue = value.roundToDouble();
        });

      },
          ),),
           FloatingActionButton.extended(
                  onPressed:(){
                }, 
                backgroundColor: Colors.red,
                label: Text(currentvalue.toString()),),
          Text('   ')]
          ),
          Row(
             mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[    
          Slider(
            value: currentvalue2,
            min: 0.0,
            max: 255.0,
             label: currentvalue2.round().toString(),
      onChanged: (value){
        setState(() {
          currentvalue2 = value.roundToDouble();
        });
      },
          ),
           FloatingActionButton(
                  onPressed:(){
                   
                }, 
                backgroundColor: Colors.green,
                child: Text(currentvalue2.toString()),)
          ]
          ), 
          Row(
             mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
          Slider(
            value: currentvalue3,
            min: 0.0,
            max: 255.0,
          //   label: currentvalue.round().toString(),
      onChanged: (value){
        setState(() {
          currentvalue3 = value.roundToDouble();
        });
      },
          ),
           FloatingActionButton.extended(
                  onPressed:(){
                }, 
                backgroundColor: Colors.blue,
                label: Text(currentvalue3.toString()),)
          ]
          ),
          
      ]),
    );
  }
}
