import 'dart:io';

void main() {
  stdout.write("Enter number 1: ");
  String? a = stdin.readLineSync();

  stdout.write("Enter number 2: ");
  String? b = stdin.readLineSync();

  try {
    int num1 = int.parse(a!);
    int num2 = int.parse(b!);

    print("Sum: ${num1 + num2}");
  } catch (e) {
    print("Invalid input");
  }
}