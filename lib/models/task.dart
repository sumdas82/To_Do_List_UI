import 'package:flutter/material.dart';

class Task {
  final String id;
  final String title;
  final String time;
  final TaskStatus status;

  Task({
    required this.id,
    required this.title,
    required this.time,
    required this.status,
  });
}

enum TaskStatus {
  done,
  inProgress,
  todo,
}

extension TaskStatusExtension on TaskStatus {
  String get displayName {
    switch (this) {
      case TaskStatus.done:
        return 'Done';
      case TaskStatus.inProgress:
        return 'In Progress';
      case TaskStatus.todo:
        return 'To-do';
    }
  }

  Color get color {
    switch (this) {
      case TaskStatus.done:
        return Colors.green;
      case TaskStatus.inProgress:
        return Colors.orange;
      case TaskStatus.todo:
        return Colors.grey;
    }
  }

  IconData get icon {
    switch (this) {
      case TaskStatus.done:
        return Icons.check_circle;
      case TaskStatus.inProgress:
        return Icons.hourglass_top;
      case TaskStatus.todo:
        return Icons.radio_button_unchecked;
    }
  }
}