import 'package:attandence_cubit/student/cubit/attandence_cubit.dart';
import 'package:attandence_cubit/student/cubit/attandence_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Student Attandece ')),
      body: BlocBuilder<AttandenceCubit, AttandenceState>(
        builder: (context, state) {
          final cubit = context.read<AttandenceCubit>();
          return Column(
            children: [
              Text('Present : ${cubit.totalAbsent}'),
              Text('Absent : ${cubit.totalAbsent}'),
              Expanded(
                child: ListView.builder(
                  itemCount: state.students.length,
                  itemBuilder: (context, index) {
                    final student = state.students[index];
                    return CheckboxListTile(
                      title: Text(student.name),
                      value: student.isPresent,
                      onChanged: (_) {
                        context.read<AttandenceCubit>().toggleAttandence(index);
                      },
                    );
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
