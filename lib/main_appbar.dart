
import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(60.0);
  final _state; 
  final _size;

  const MainAppBar({state,size}) : 
  _state = state,
  _size = size;
  @override
  Widget build(BuildContext context) {
    return AppBar( title: const Text('My Icon'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.remove_circle_outline_sharp),
            tooltip: 'Zoom Out',
            iconSize: 33,
            onPressed: () {
              _state.size = _size;
            },
          ),
          ElevatedButton(
                child: Text('S', style: TextStyle(fontSize: 12),),
                onPressed: () {
                    _state.size = _size;
                },
                style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                minimumSize: Size(10,20),
                 // padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  shape: CircleBorder(), side: BorderSide(width: 3.0, color: Colors.white,)
                ),
              ),
               Text('   '),
            ElevatedButton(
                child: Text('M', style: TextStyle(fontSize: 11),),
                onPressed: () {
                    _state.size = _size;
                },
                style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 9, horizontal: 9),
                minimumSize: Size(10,20),
                 // padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  shape: CircleBorder(), side: BorderSide(width: 3.0, color: Colors.white,)
                ),
              ),
              Text('   '),
              ElevatedButton(
              child: Text('L', style: TextStyle(fontSize: 12),),
                onPressed: () { 
                     _state.size = _size;
                },
                style: ElevatedButton.styleFrom(    
                 padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    minimumSize: Size(10,20),

                 // padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  shape: CircleBorder(), 
                  side: BorderSide(
                    width: 3.0, 
                    color: Colors.white, 
                     )
                ),
              ),
          IconButton(
                   icon: const Icon(Icons.add_circle_outline_sharp),
            iconSize: 33,
            tooltip: 'Zoom In',
            onPressed: () {
               _state.size = _size;
            },
          ),
          
        ],
      );
  }
}

