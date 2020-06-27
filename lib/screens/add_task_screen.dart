import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/model/task_data.dart';

class AddTaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    String newTaskTitle;
    return Container(
      color: Color(0x757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        padding: EdgeInsets.only(top:10.0, right: 20.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'ADD TASK',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0, color: Colors.lightBlueAccent),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newTask) {
                  newTaskTitle = newTask;
                },
              ),
            ),
            FlatButton(
              color: Colors.lightBlueAccent,
              child: Text(
                'ADD',
                style: TextStyle(
                  fontSize: 16.0, 
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Provider.of<Taskdata>(context,listen: false).addTask(newTaskTitle);
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
