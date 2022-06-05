import 'package:flutter/material.dart';
import 'package:todo_list/models/task.dart';
import 'package:provider/provider.dart';
import 'package:todo_list/models/task_data.dart';
class AddTaskScreen extends StatefulWidget {


  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  String? newTaskTitle;
  @override
  Widget build(BuildContext context) {

    return Container(
      color: const Color(0xFF757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (newTask) {
                newTaskTitle = newTask;
              },
            ),
            FlatButton(
              onPressed: () {

         Provider.of<TaskData>(context,listen: false).addTask(newTaskTitle!);
         Navigator.pop(context);

              },
              color: Colors.lightBlueAccent,
              child: const Text(
                'Add',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
