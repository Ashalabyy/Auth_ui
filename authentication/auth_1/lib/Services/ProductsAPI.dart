import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/Product.dart';
import '../models/Products.dart';

class ProductsAPI {
  static const url = 'https://dummyjson.com';
  Future<List<Product>> fetchProducts() async {
    const ProductsPath = '$url/products';
    try {
      final response = await http.get(
        Uri.parse(ProductsPath),
      );

      if (response.statusCode == 200) {
        print('StatusCode = ${response.statusCode}');
        final parsedJason = json.decode(
          response.body,
        ); // jsondecode converted to {} becouse its a String.

        ProductsList products = ProductsList.fromJson(parsedJason);
        List<Product> productslist =
            products.Products.map((e) => Product.fromJson(e)).toList();

        return productslist;
      } else {
        print('StatusCode = ${response.statusCode}');
        return [];
      }
    } catch (e) {
      print(e);
      throw e;
    }
  }

  Future<Product> findProductById(int id) async {
    final ProductsPath = '$url/products/$id';
    print('$id From API');
    try {
      final response = await http.get(
        Uri.parse(ProductsPath),
      );
      //  if (response.statusCode == 200) {
      print('StatusCode = ${response.statusCode}');
      final parsedJason = json.decode(
        response.body,
      ); // jsondecode converted to {} becouse its a String.

      return Product.fromJson(parsedJason);

      //  }
    } catch (e) {
      print(e);
      throw e;
    }
  }
}
