/// Model class representing one row of the `products` table.
class Product {
  final int? id;
  final String name;
  final double price;
  final int quantity;

  Product({
    this.id,
    required this.name,
    required this.price,
    required this.quantity,
  });

  /// Convert a Product into a Map for inserting/updating in SQLite.
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'price': price,
      'quantity': quantity,
    };
  }

  /// Create a Product from a database row.
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'] as int?,
      name: map['name'] as String,
      price: (map['price'] as num).toDouble(),
      quantity: map['quantity'] as int,
    );
  }
}