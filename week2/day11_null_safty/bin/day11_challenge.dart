void main() {
  String? username;
  String? password;

  if (username != null && password != null) {
    print("username: $username");
    print("password: $password");
  } else {
    print('error may be username or password');
  }
}
