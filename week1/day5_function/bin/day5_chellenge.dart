void main() {
  print("Add two value: ${add(4, 8)}");
  print("Substract two value: ${sub(4, 8)}");
  print("Multiple two value: ${mul(4, 8)}");
  print("Divide two value: ${div(4, 8)}");
}

int add(int a, int b) => a + b;
int sub(int a, int b) => a - b;
int mul(int a, int b) => a * b;
double div(int a, int b) => a / b;
