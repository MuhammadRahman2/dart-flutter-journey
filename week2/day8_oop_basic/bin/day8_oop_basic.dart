void main() {
  Car car = Car();
  car.sayWel();
}

class Car {
  String? brand = 'ABC';
  int? year = 2026;

  // Car(this.brand, this.year);
  void sayWel() {
    print("Welcome $brand in $year");
  }
}
