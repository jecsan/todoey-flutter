import 'package:flutter/material.dart';
import 'package:todoey_flutter/model/task.dart';

class TasksList extends StatefulWidget {
  List<Task> tasks = [];

  @override
  State<StatefulWidget> createState() {
    return TasksListState();
  }

  TasksList(this.tasks);
}

class TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: widget.tasks.length,
        itemBuilder: (context, index) {
          return TaskTile(
            title: widget.tasks[index].name,
            isChecked: widget.tasks[index].isDone,
            onChanged: (newValue) {
              setState(() {
                widget.tasks[index].toggleDone();
              });
            },
          );
        });
  }
}

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function onChanged;

  TaskTile(
      {@required this.title,
      @required this.isChecked,
      @required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            decoration:
                isChecked ? TextDecoration.lineThrough : TextDecoration.none),
      ),
      trailing: Checkbox(value: isChecked, onChanged: onChanged),
    );
  }
}
