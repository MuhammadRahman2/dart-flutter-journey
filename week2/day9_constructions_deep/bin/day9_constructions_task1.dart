void main() {
  User s1 = User("Rahman", 2026);
  print(s1.name);
  print(s1.age);
}

class User {
  var name;
  var age;

  User(var name, var age) {
    this.name = name;
    this.age = age;
  }
}

// class Car {
//   var brand;
//   var year;

//   Car(String b, int y) {
//     brand = b;
//     year = y;

//     print("Car created");
//   }
// }
