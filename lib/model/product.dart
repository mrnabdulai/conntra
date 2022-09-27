class Product {
  final int id;
  final String category;
  final String name;
  final String productCode;
  final String image;
  final double price;
  final String description;

  Product(
      {required this.id,
      required this.category,
      required this.productCode,
      required this.name,
      required this.description,
      required this.price,
      required this.image});

  Product.fromJson(Map<String, dynamic> data)
      : name = data['name'],
        description = data['description'],
        price = data['price'],
        image = data['image'],
        category = data['category'],
        id = data['id'],
        productCode = data['productCode'];

  Map<String, dynamic> get toJson => {
        'name': name,
        'description': description,
        'price': price,
        'image': image,
        'category': category,
        'id': id,
        'productCode': productCode
      };
}
