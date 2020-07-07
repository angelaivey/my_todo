import 'package:flutter/foundation.dart';
import 'package:mytodo/models/task.dart';

class TaskData extends ChangeNotifier{
  List<Task> tasks = [
    Task(name: 'Get shoes'),
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy meat'),
  ];

}