class Product {
  final String name;
  final String description;
  final double price;
  final String imgUrl;

  Product(
      {required this.name,
      required this.description,
      required this.price,
      required this.imgUrl});

  Product.fromJson(Map<String, dynamic> data)
      : name = data['name'],
        description = data['description'],
        price = data['price'],
        imgUrl = data['imgUrl'];

  Map<String, dynamic> get toJson => {
        'name': name,
        'description': description,
        'price': price,
        'imgUrl': imgUrl
      };
}
