import 'dart:io';

void main() {
  List<String> tasks = [];

  while (true) {
    print("\n--- TODO APP ---");
    print("1. Add Task");
    print("2. View Tasks");
    print("3. Delete Task");
    print("4. Exit");

    stdout.write("Enter choice: ");
    String? input = stdin.readLineSync();
    int choice = int.parse(input!);

    if (choice == 1) {
      addTask(tasks);
    } else if (choice == 2) {
      viewTasks(tasks);
    } else if (choice == 3) {
      deleteTask(tasks);
    } else if (choice == 4) {
      print('Goodbye');
      break;
    } else {
      print("Invalid choice");
    }
  }
}

void addTask(List<String> tasks) {
  stdout.write('Enter task: ');
  String? task = stdin.readLineSync();

  if (task != null && task.isNotEmpty) {
    tasks.add(task);
    print("Task added  ");
  } else {
    print("Invalid input");
  }
}

void viewTasks(List<String> tasks) {
  if (tasks.isEmpty) {
    print("No tasks available");
    return;
  }

  print("\nYour Tasks:");
  for (var (index, num) in tasks.indexed) {
    print("${index + 1}. $num");
  }
}

void deleteTask(List<String> tasks) {
  viewTasks(tasks);

  if (tasks.isEmpty) return;

  stdout.write("Enter task number to delete: ");
  String? input = stdin.readLineSync();

  int index = int.parse(input!) - 1;

  if (index >= 0 && index < tasks.length) {
    tasks.removeAt(index);
    print("Task deleted");
  } else {
    print("Invalid index");
  }
}
