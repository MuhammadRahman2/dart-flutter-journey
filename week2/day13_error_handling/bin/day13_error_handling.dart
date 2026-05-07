void main() {
  try {
    int num = int.parse("123");
    print(num);
  } on FormatException {
    print("Please enter a valid number");
  } finally {
    print('done');
  }
}
