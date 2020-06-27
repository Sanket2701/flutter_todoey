import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_list/model/task_data.dart';
import 'package:todo_list/screens/task_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.lightBlueAccent,
      statusBarBrightness: Brightness.light,
    ));
    return ChangeNotifierProvider(
      create: (context) => Taskdata(),
      lazy: false,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TaskScreen(),
      ),
    );
  }
}
