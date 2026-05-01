class User {
  var name;
  var age;

  User(this.name, this.age);

  User.admin() {
    name = "Admin";
    age = 30;
  }
}

void main() {
  User user = User('Ahmad', 29);
  User admin = User("osama", 19);
  print("User : ${user.name} ${user.age}");
  print("Admin: ${admin.name} ${admin.age}");
}
