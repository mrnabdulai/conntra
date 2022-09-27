import 'package:contra/model/product.dart';
import 'package:flutter/foundation.dart';

class CartProvider extends ChangeNotifier {
  late List<Product> _products;

  CartProvider() {
    _products = [];
  }

  List<Product> get products => _products;

  set addProduct(Product product) {
    _products.add(product);
    notifyListeners();
  }
}
