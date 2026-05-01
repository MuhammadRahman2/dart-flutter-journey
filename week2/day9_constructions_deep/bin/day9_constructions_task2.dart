void main() {
  Student s1 = Student('Ahmad', 80);
  Student s2 = Student.fail();
  print("${s1.name} ${s1.marks}");
  print("${s2.name} ${s2.marks}");
}

class Student {
  var name;
  var marks;

  Student(this.name, this.marks);

  Student.fail() {
    name = "Unknown";
    marks = 0;
  }
}
