import 'package:flutter/material.dart';
import 'package:mytodo/models/task_data.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import 'package:mytodo/models/task.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index){
        return TaskTile(
          taskTitle: Provider.of<TaskData>(context).tasks[index].name,
          isChecked: Provider.of<TaskData>(context).tasks[index].isDone,
          checkboxCallback: (checkboxState){
//            setState(() {
//              widget.tasks[index].toggleDone();
//            });
          },
        );
      },
      itemCount: Provider.of<TaskData>(context).tasks.length,
    );
  }
}