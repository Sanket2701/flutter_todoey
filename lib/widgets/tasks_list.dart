import 'package:flutter/material.dart';
import 'package:todo_list/model/task_data.dart';
import 'package:todo_list/widgets/tasks_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatefulWidget {

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Taskdata>(
      builder: (context, taskData, child) {
        return ListView.builder(
        itemBuilder: (context, index) {
          final task = taskData.tasks[index];
          return TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            checkboxCallback: (checkboxState) {
              taskData.updateTask(task);
            },
            deleteCallback: (){
              taskData.deleteTask(task);
            } ,
          );
        },
        itemCount: taskData.taskCount,
      );
      }, 
    );
  }
}
