void main() {
  List<int> numbers = [1, 2, 3, 4];

  //// tranform data
  // var double = numbers.map((e) => e * 2);
  // print("$numbers : $double");

  //// filters
  // var filters = numbers.where((n) => n % 2 == 0);
  // print(filters);

  //// loop
  for (var n in numbers) {
    print(n);
  }
}
