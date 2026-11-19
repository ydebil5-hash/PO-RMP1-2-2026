class Product {
  String title;
  double price;
  int quantity;

  Product({
    required this.title,
    required this.price,
    required this.quantity,
  });

  double getTotalCost() {
    return price * quantity;
  }

  void printProduct() {
    print('Товар: $title, цена: $price, кол-во: $quantity');
  }

  void restock(int amount) {
    if (amount > 0) {
      quantity += amount;
    }
  }
}

void main() {
  List<Product> products = [
    Product(title: 'Шлем MTB', price: 6500.0, quantity: 4),
    Product(title: 'Перчатки', price: 1200.0, quantity: 10),
    Product(title: 'Гидролиния', price: 950.0, quantity: 7),
    Product(title: 'Покрышка 29"', price: 4800.0, quantity: 6),
    Product(title: 'Грипсы', price: 1100.0, quantity: 12),
  ];

  print('--- Список товаров ---');
  double totalWarehouseCost = 0.0;
  Product mostExpensive = products.first;

  for (var product in products) {
    product.printProduct();
    totalWarehouseCost += product.getTotalCost();
    if (product.price > mostExpensive.price) {
      mostExpensive = product;
    }
  }

  print('\nОбщая стоимость склада: $totalWarehouseCost');
  print('Самый дорогой товар: ${mostExpensive.title}');

  print('\n--- Пополнение товара ---');
  products[1].restock(5);
  print('После пополнения:');
  products[1].printProduct();
}