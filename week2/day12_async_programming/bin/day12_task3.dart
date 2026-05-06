Future<String> fetchData()  {
  return  Future.delayed(const Duration(seconds: 2), () => 'Data is Come');
}

void main() async {
  print("Loading...");
  print(await fetchData());
  print("Done");
}
