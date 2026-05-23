import 'package:flutter/material.dart';
import 'package:todo_list_ui/widget/task_card.dart';
import '../models/task.dart';
import 'add_task_screen.dart';

class TaskListScreen extends StatelessWidget {
  TaskListScreen({super.key});

  final List<Task> tasks = [
    Task(
      id: '01',
      title: 'Good Morning, Mr Sumon!!! Wake Up...',
      time: '07:00 AM (10 minutes ago)',
      status: TaskStatus.done,
    ),
    Task(
      id: '02',
      title: 'Ready for Jogging...',
      time: '07:30 PM',
      status: TaskStatus.inProgress,
    ),
    Task(
      id: '03',
      title: 'Water your Plants, Feed your birds',
      time: '08:00 PM',
      status: TaskStatus.todo,
    ),
    Task(
      id: '04',
      title: 'Have Breakfast and Ready for Office',
      time: '08:30 PM',
      status: TaskStatus.todo,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'To-Do List',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return TaskCard(task: tasks[index]);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddTaskScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}