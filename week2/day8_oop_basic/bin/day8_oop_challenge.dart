void main() {
  List<User> users = [User("Ali", 20), User("Ahmed", 25)];

  for (var user in users) {
    print("${user.name} ${user.age}");
  }
}

class User {
  String name;
  int age;

  User(this.name, this.age);
}
