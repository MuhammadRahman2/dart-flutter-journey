// Task 2: async/await
// Call above function and print result

Future<String> fetchUserOrder() {
  return Future.delayed(
    const Duration(seconds: 2),
    () => 'Large Latte',
  );
}

Future<void> main() async {
  print('Fetching user order...');
  

  String order = await fetchUserOrder();
  

  print('Your order is: $order');
}
