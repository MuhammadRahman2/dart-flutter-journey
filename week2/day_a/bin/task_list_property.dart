void main() {
  List<Map<String, dynamic>> students = [
    {"name": "Ali", "marks": 80},
    {"name": "Ahmed", "marks": 40},
  ];

  students.where((n) => n['marks'] >= 50).forEach((n) => print(n['name']));
  // print('Passed student : $passed');
}
