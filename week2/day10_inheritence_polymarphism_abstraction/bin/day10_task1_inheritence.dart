class User {
  String name;

  User(this.name);

  void login() {
    print('$name logged in');
  }
}

class Admin extends User {
  Admin(super.name);

  void deleteUser() {
    print("Admin can delete user ");
  }
}

void main() {
  Admin admin = Admin("Rahman");
  admin.login();
  admin.deleteUser();
}
