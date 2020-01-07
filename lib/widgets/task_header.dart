import 'package:flutter/material.dart';

class TasksHeader extends StatelessWidget {
  int taskCount;

  TasksHeader(this.taskCount);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              child: Icon(
                Icons.list,
                size: 30,
                color: Colors.lightBlueAccent,
              )),
          SizedBox(
            height: 10,
          ),
          Text(
            'Todoey',
            style: TextStyle(
                color: Colors.white, fontSize: 50, fontWeight: FontWeight.w700),
          ),
          Text(
            '$taskCount Tasks',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
