import 'package:attandence_cubit/student/cubit/attandence_state.dart';
import 'package:attandence_cubit/student/models/student.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AttandenceCubit extends Cubit<AttandenceState> {
  AttandenceCubit()
    : super(
        AttandenceState(
          students: [
            Student(name: "Ali", isPresent: false),
            Student(name: "Ahmed", isPresent: false),
          ],
        ),
      );

  void toggleAttandence(int index) {
    final updatedStudents = List<Student>.from(state.students);

    updatedStudents[index] = updatedStudents[index].copyWith(
      isPresent: !updatedStudents[index].isPresent,
    );

    emit(AttandenceState(students: updatedStudents));
  }

  int get totalPresent {
    return state.students.where((student) => student.isPresent).length;
  }

 int get totalAbsent {

  return state.students.where((student) => !student.isPresent,).length;

}


}
