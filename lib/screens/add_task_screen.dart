import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  String taskInput;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20)
            )
        ),
        child: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                child: Text(
                  'Add Task',
                  style: TextStyle(
                    color: Colors.lightBlueAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: 250,
                child: TextField(
                  autofocus: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                    print(value);
                    taskInput = value;
                  },
                  decoration: InputDecoration(
                    hintText: 'type in a task',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                height: 3,
                width: 250,
                child: Container(
                  color: Colors.lightBlueAccent,
                ),

              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 60,
                width: 250,
                child: FlatButton(
                  onPressed: () {

                  },
                  child: Text(
                    'Add',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,

                    ),
                  ),
                  color: Colors.lightBlueAccent,
                ),
              )
            ],
          ),
        ),
      ),
    );  }
}