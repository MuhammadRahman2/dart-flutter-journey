class Payment {
  void pay() {
    print('Processing payment');
  }
}

class JazzCash extends Payment {
  @override
  void pay() {
    print('pay via JazzCash');
  }
}

class EasyPaisa extends Payment {
  @override
  void pay() {
    print('pay via EasyPaisa');
  }
}

void main() {
  Payment payment = Payment();
  JazzCash jazzCash = JazzCash();
  EasyPaisa easyPaisa = EasyPaisa();
  payment.pay();
  jazzCash.pay();
  easyPaisa.pay();
}
