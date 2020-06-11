import 'package:flutter/material.dart';


class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {

  bool isChecked = false;
  String taskTitle;


  void checkBoxCallback (bool flagger) {
    setState(() {
      isChecked =  flagger;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
          'taskTitle',
          style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null
          ),
      ),
      trailing: TaskCheckbox(isChecked, checkBoxCallback),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final Function toggle;

  TaskCheckbox(this.checkboxState, this.toggle);
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: checkboxState,
        onChanged: toggle,
  );
}
}
