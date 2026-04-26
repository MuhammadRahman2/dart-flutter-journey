// void main() {
  
//   for (int i = 1; i <= 5; i++) {
//     String pattern = "";
//     for (int j = 1; j <= i; j++) {
//       pattern += "*";
//     }
//     print(pattern);
//   }
// }
void main() {
  for (int i = 1; i <= 4; i++) {
    String row = '';

    for (int j = 1; j <= i; j++) {
      row += '*';
    }

    print(row);
  }
}
