// Task 1: Future
// Create function:
// wait 2 seconds
// return "Hello

void main() async {
  String data = await fectchData();

  print(data);
}

Future<String> fectchData() async {
  await Future.delayed(Duration(seconds: 1));
  return "Hello";
}
