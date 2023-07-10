import 'package:flutter/cupertino.dart';
import '../models/Product.dart';
import '../Services/ProductsAPI.dart';

class Products with ChangeNotifier {
  List<Product> _productsList = [];
  Product _product = Product(
    id: 0,
    title: '',
    description: '',
    price: 0,
    ImageUrl: '',
    images: ['', '', ''],
  );

  Future<void> fetchProducts() async {
    _productsList = await ProductsAPI().fetchProducts();

    notifyListeners();
  }

  Future<void> findProductbyId(int id) async {
    _product = await ProductsAPI().findProductById(id);
    print('$id From Provider');
  }

  Product get product => _product;
  List<Product> get productList => _productsList;
}
