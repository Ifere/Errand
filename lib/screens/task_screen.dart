import 'package:errand/widgets/task_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context) => AddTaskScreen());
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(Icons.add, color: Colors.white, size: 40,),

      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 50.0,
          ),
          CircleAvatar(
            child: Icon(
              Icons.list,
              size: 30.0,
              color: Colors.deepOrangeAccent,
            ),
            backgroundColor: Colors.white,
            radius: 20.0,
          ),
          SizedBox(height: 10.0,),
          Text(
              '12 slaves',
              style: TextStyle(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          Expanded(
            child: Container(
              child: buildListView(),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                ),
              ),
            ),
          ),
        ],

      ),
    );
  }

  Widget buildListView() {
    return  ListView(
              children: <Widget>[
                TaskTile(),
                TaskTile(),
                TaskTile(),

              ],

            );
  }
}




//return ListView.builder(
//padding: EdgeInsets.all(10.0),
//itemCount: mess.length,
//itemBuilder: (BuildContext context, int index) {
//
//return _buildRow(mess[index], user[index] ? TextAlign.right : TextAlign.left);
//});
//
//
//Widget _buildRow(String topic, TextAlign direct) {
//  return Row(
//    children: <Widget>[
//      Expanded(
//        child: TextField(
//          onChanged: (value) {
//            //Do something with the user input.
//            message = value;
//          },
//          controller: ,
//          decoration: BoxDecoration(
//            color: Colors.white,
//          ),
//        ),
//      ),
//    ],
//
//  );
//}





