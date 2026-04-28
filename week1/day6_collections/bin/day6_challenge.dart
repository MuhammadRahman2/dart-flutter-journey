void main() {
  List<Map<String, dynamic>> students = [
    {'name': "Ali", "marks": 80},
    {'name': "Ahmad", "marks": 40},
    {'name': "Rahman", "marks": 90},
  ];

  // print name
  for (var num in students) {
    print(num["name"]);
  }

  for (var num in students) {
    if (num["marks"] < 50) {
      print('${num["name"]} Fails, marks is :${num["marks"]}');
    } else {
      print('${num["name"]} Pass, marks is ${num["marks"]}');
    }
  }

}
