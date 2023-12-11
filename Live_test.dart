void main() {
  List<Map<String, dynamic>> fruits = [
    {"name": "Orange", "color": "Orange", "price": 60.0},
    {"name": "Watermelon", "color": "Red", "price": 110.0},
    {"name": "Strawberry", "color": "pink", "price": 400.0},
  ];

  print("Original Fruit Details before Discount:");
  displayFruitDetails(fruits);

  applyPriceDiscount(fruits, 10);

  print("\nFruit Details After Applying 10% Discount:");
  displayFruitDetails(fruits);
}

void displayFruitDetails(List<Map<String, dynamic>> fruits) {
  for (var fruit in fruits) {
    print(
        "Name: ${fruit['name']}, Color: ${fruit['color']}, Price: \$${fruit['price']}");
  }
}

void applyPriceDiscount(List<Map<String, dynamic>> fruits, double discountPercentage) {
  for (var fruit in fruits) {
    double originalPrice = fruit['price'];
    double discountAmount = (originalPrice * discountPercentage) / 100;
    fruit['price'] = (originalPrice - discountAmount).toStringAsFixed(2);
  }
}