import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  String _task;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 25),
            ),
            TextField(
              onChanged: (value) {
                _task = value;
              },
              autofocus: true,
            ),
            SizedBox(height: 15),
            FlatButton(
              color: Colors.lightBlueAccent,
              onPressed: () {
                Navigator.pop(context, _task);
              },
              child: Text(
                'Add',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
