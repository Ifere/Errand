import 'package:errand/widgets/task_tile.dart';
import 'package:flutter/material.dart';



class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task>    tasks = [];
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        TaskTile()
      ],
    );
  }
}
