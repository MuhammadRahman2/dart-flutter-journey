import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_attendence/providers/attandence_provider.dart';

class StudentTitle extends StatelessWidget {
  // final Student student;
  final int index;
  const StudentTitle({super.key,required this.index});

  @override
  Widget build(BuildContext context) {
    return Consumer<AttendenceProvider>(
      builder: (context, provider, child) {
        final student = provider.students[index];
        return ListTile(
          title: Text(student.name),
          leading: Icon(
            student.isPresent ? Icons.check_circle : Icons.cancel,
            color: student.isPresent ? Colors.green : Colors.red,
          ),
          onTap: () {
            context.read<AttendenceProvider>().toggleAttendance(index);
          },
        );
      },
    );
  }
}
