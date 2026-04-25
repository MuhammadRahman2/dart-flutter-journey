void main() {
  String name = 'Rahman';
  int age = 26;

  List<String> skills = ['Dart', 'Flutter'];

  Map<String, dynamic> profile = {'name': name, 'age': age, 'skills': skills};

  print(profile['name']);
  print(profile['age']);
  print(profile['skills']);
  print(profile);

}
