import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  bool isChecked;
  final Function(bool?) checkboxCallback;
  final VoidCallback longPressCallback;

  TaskTile(
      {required this.title,
      required this.isChecked,
      required this.checkboxCallback,
      required this.longPressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallback,
      title: Text(
        title,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
