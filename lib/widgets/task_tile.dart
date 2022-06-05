import 'package:flutter/material.dart';
import 'package:todo_list/models/task_data.dart';
import 'package:provider/provider.dart';
class TaskTile extends StatefulWidget {

  final bool isChecked ;
  final String taskTitle;
  final Function checkbokCallback;
  final Function longPressCallback;
  TaskTile({required this.isChecked,required this.taskTitle, required this.checkbokCallback,required this.longPressCallback});

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  late bool _isChecked;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _isChecked = widget.isChecked;
  }
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: (){
        widget.longPressCallback();
      },
      title: Text(
        widget.taskTitle,
        style: _isChecked
            ? TextStyle(decoration: TextDecoration.lineThrough)
            : null,
      ),
      trailing: Checkbox(
        value: _isChecked,
        activeColor: Colors.lightBlueAccent,
        onChanged:(value) {
          widget.checkbokCallback(value);
          setState(() {
            _isChecked = value!;
          });
        },
      ),
    );
  }
}


