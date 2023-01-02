import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoye/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  final messageTextController = TextEditingController();
  late String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,
            ),
          ),
          TextField(
            controller: messageTextController,
            autofocus: true,
            textAlign: TextAlign.center,
            onChanged: (value) {
              newTaskTitle = value;
            },
          ),
          SizedBox(
            height: 10.0,
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
            ),
            onPressed: () {
              Provider.of<TaskData>(context, listen: false)
                  .addTask(newTaskTitle);
              messageTextController.clear();
              Navigator.pop(context);
            },
            child: Text(
              'Add',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
