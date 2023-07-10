import 'package:flutter/material.dart';
import './Product.dart';

class ProductsList {
  List<dynamic> Products;

  ProductsList({
    required this.Products,
  });

  factory ProductsList.fromJson(Map<String, dynamic> json) => ProductsList(
        Products: json['products'],
      );
}
