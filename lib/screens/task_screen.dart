import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Container(
        padding: EdgeInsets.only(top: 60.0, bottom: 30.0, left: 30.0, right: 30.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              child: Icon(Icons.list, size: 30.0,),
              backgroundColor: Colors.white,
              radius: 20.0,
            )
          ],

        ),
      ),
    );
  }
}
