import 'package:auth_1/Screens/Home/ProductsScreen.dart';
import 'package:flutter/material.dart';
import './HomeItem.dart';

class HomeScreen extends StatelessWidget {
  static const RouteName = '/HomeScreen';

  @override
  Widget build(BuildContext context) {
    final Sizes = MediaQuery.of(context).size;
    return Scaffold(
      //   extendBodyBehindAppBar: true,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 60,
            height: 60,
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                )
              ],
              borderRadius: BorderRadius.circular(999),
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'Apple',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 16,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 60,
              height: 60,
              child: Icon(
                Icons.favorite_border,
                color: Colors.red,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                  )
                ],
                borderRadius: BorderRadius.circular(999),
              ),
            ),
          ),
        ],
      ),
      body: HomeItem(),
    );
  }
}
//HomeItem(),