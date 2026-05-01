# WHAT is a Constructor?

- A constructor is a special function that runs when you create an object.
- class Car {
-  String brand;
-  int year;
-
- Car(this.brand, this.year);
- }
- Car car1 = Car("Toyota", 2020);

## Deep Understanding (Manual Constructor)
-class Car {
- String brand;
-  int year;

-  Car(String b, int y) {
-    brand = b;
-    year = y;
-   }
- }

## Short form (recommended):
- User(this.name, this.age);

## 5 WHAT Named Constructors

- Special constructors with different names.

- User.guest() {
-    name = "Guest";
-    age = 0;
-  }