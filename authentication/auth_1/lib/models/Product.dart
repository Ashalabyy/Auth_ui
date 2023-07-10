import 'package:flutter/material.dart';

class Product with ChangeNotifier {
  final int id;
  final String title;
  final String description;
  final int price;
  final String ImageUrl;
  final List<String> images;
  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.ImageUrl,
    required this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json['id'],
        title: json['title'],
        description: json['description'],
        price: json['price'],
        ImageUrl: json['thumbnail'],
        images: toList(
          json['images'],
        ),
      );

  static List<String> toList(List<dynamic> listofImages) {
    return List<String>.from(listofImages);
  }
}
