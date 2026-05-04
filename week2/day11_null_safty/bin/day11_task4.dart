import 'dart:io';

void main() {
  String? password;

  // Loop until password is not null and not empty
  do {
    stdout.write('Enter password: ');
    password = stdin.readLineSync();

    if (password == null || password.isEmpty) {
      print('Password cannot be null or empty. Please try again.');
    }
  } while (password == null || password.isEmpty);

  // Print the valid password
  print('Password accepted: $password');
}



// void main() {
//   String? password;

//   // This runs as long as password is null
//   while (password == null) {
//     print('Enter your password: ');
//     String? input = stdin.readLineSync();

//     // Check if input is null or just an empty string
//     if (input != null && input.isNotEmpty) {
//       password = input; // Break the loop by assigning a value
//     } else {
//       print('Invalid input. Try again.');
//     }
//   }

//   print('Success! Your password is: $password');
// }

