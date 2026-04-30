void main() {
  Product product = Product('HP', 35000);
  print("Product is :${product.name}\nand Price ${product.price} ");
}

class Product {
  String name;
  int price;

  Product(this.name, this.price);
}
