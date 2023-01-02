import 'package:flutter/material.dart';
import 'package:todoye/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:todoye/models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              title: task.name,
              isChecked: task.isDone,
              checkboxCallback: (bool? checkboxState) =>
                  taskData.updateTask(task),
              longPressCallback: () => taskData.deleteTask(task),
            );
          },
        );
      },
    );
  }
}
