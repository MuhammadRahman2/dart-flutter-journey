void main() async {
  print('start');
  //   Future.delayed(Duration(seconds: 2), () {
  //     print('Hello after 2 Sec');
  //   });

//   String data = await fetchData();

  //   print(data);

  await for (var number in countStream()) {
    print(number);
  }

  print('end');
}

// future
Future<String> fetchData() async {
  await Future.delayed(Duration(seconds: 1));
  return "Data loaded";
}

// stream
Stream<String> countStream() async* {
  for (int i = 1; i <= 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield 'second $i';
  }
}
