void main() {
  Student s1 = Student('Rahman', 80);
  Student s2 = Student("Ahmed", 40);

  print(s1.name);
  print(s1.marks);
}

class Student {
  String name;
  int marks;

  Student(this.name, this.marks);
}
