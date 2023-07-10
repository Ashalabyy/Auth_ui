import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/Products.dart';
import 'Screens/Home/HomeScreen.dart';
import 'Screens/admin/addProductFourm.dart';
import 'Screens/Home/ProductDetailScreen.dart';
import 'Screens/Home/ProductsScreen.dart';
import './models/Product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: ProductDetailScreen(),
        routes: {
          HomeScreen.RouteName: (context) => HomeScreen(),
          ProductDetailScreen.RouteName: (context) => ProductDetailScreen(),
          ProductsScreen.RouteName: (context) => ProductsScreen(),
          addProductFourm.RouteName: (context) => addProductFourm(),
        },
      ),
    );
  }
}
