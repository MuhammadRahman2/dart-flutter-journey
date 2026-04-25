void main() {
  int balance = 1000;
  int withdraw = 500;

  if (withdraw <= balance) {
    print('allow ');
  } else {
    print("not allow: not much money");
  }
}
