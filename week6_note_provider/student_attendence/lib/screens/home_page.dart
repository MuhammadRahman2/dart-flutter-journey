import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:student_attendence/providers/attandence_provider.dart';
import 'package:student_attendence/widgets/student_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    final provider = context.read<AttendenceProvider>();
    debugPrint('build call');
    return Scaffold(
      appBar: AppBar(title: Text('Student Attendance')),
      body: Column(
        children: [
          Consumer<AttendenceProvider>(
            builder: (context, provider, child) {
              return Text('Present: ${provider.totalPresent}');
            },
          ),
          SizedBox(height: 10),
          Consumer<AttendenceProvider>(
            builder: (context, provider, child) {
              return Text('Absent: ${provider.totalAbsent}');
            },
          ),
          Expanded(
            child: ListView.builder(
              itemCount: provider.students.length,
              itemBuilder: (context, index) {
                return StudentTitle(
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
