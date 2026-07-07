import 'package:flutter/cupertino.dart';
import 'package:student_attendence/models/student.dart';

class AttendenceProvider extends ChangeNotifier {
  final List<Student> students = [
    Student(name: "Ali"),
    Student(name: "Ahmad"),
    Student(name: 'Sara'),
    Student(name: 'Bilal'),
    Student(name: 'Hassan'),
  ];

  void toggleAttendance(int index) {
    students[index].isPresent = !students[index].isPresent;
    notifyListeners();
  }

  //present lenght
  int get totalPresent {
    return students.where((student) => student.isPresent).length;
  }


  // absent lenght
  int get totalAbsent {
    return students.length - totalPresent;
  }
}
