import 'package:flutter/foundation.dart';
import 'package:todo_list/model/task.dart';
import 'dart:collection';

class Taskdata extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Buy food'),
    Task(name: 'Buy food'),
    Task(name: 'Buy food'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newtaskTitle) {
    final task = Task(name: newtaskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

}