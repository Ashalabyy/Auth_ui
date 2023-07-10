import 'dart:io';
import 'package:flutter/material.dart';

class addProductFourm extends StatefulWidget {
  static const RouteName = '/addProduct';
  @override
  State<addProductFourm> createState() => _addProductState();
}

class _addProductState extends State<addProductFourm> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  late String title;
  late String description;
  late double Price;
  late int Quantity;

  // final newProduct = Product();

  void _SaveFrom() {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      _formKey.currentState!.save();
      print(title);
      print(Price);
      print(Quantity);
      print(description);
    }
  }

  @override
  Widget build(BuildContext context) {
    double ScreenHeight = MediaQuery.of(context).size.height;
    double ScreenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            'AddProduct',
            style: TextStyle(
              color: Color(0xFF023047),
            ),
          ),
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: ScreenHeight * 0.2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Center(
                            child: Text(
                              'pick an Image',
                              style: TextStyle(
                                color: Color(0xFF023047),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          width: ScreenWidth * 0.4,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xFF023047),
                                offset: Offset(0, -1),
                                blurRadius: 4,
                              )
                            ],
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          width: ScreenWidth * 0.4,
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: texFormDecoration.copyWith(
                                  labelText: 'Categories',
                                  hintText: 'Categories',
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              TextFormField(
                                decoration: texFormDecoration.copyWith(
                                  labelText: 'Brands',
                                  hintText: 'Brands',
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter a valid title';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      title = value;
                    },
                    maxLength: 10,
                    decoration: texFormDecoration.copyWith(
                      labelText: 'title',
                      hintText: 'title',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter a valid price';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      Price = double.parse(value);
                    },
                    decoration: texFormDecoration.copyWith(
                      labelText: 'Price',
                      hintText: 'Price',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter a valid Quantity';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      Quantity = int.parse(value);
                    },
                    decoration: texFormDecoration.copyWith(
                      labelText: 'Quantity',
                      hintText: 'Quantity',
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  /*  TextFormField(
                    decoration: texFormDecoration.copyWith(
                      labelText: 'ImageUrl',
                      hintText: 'ImageUrl',
                    ),
                  ),*/
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'please enter a valid description';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      description = value;
                    },
                    maxLines: 3,
                    maxLength: 100,
                    decoration: texFormDecoration.copyWith(
                      labelText: 'description',
                      hintText: 'description',
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  OutlinedButton(
                    onPressed: _SaveFrom,
                    child: Text('Submit'),
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.all(12),
                      minimumSize: Size(140, 30),
                      primary: Color(0xFF023047),
                      side: BorderSide(
                        color: Color(0xFF023047),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  var texFormDecoration = InputDecoration(
    labelText: 'Price',
    hintText: 'Price',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        25,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Color(0xFF023047),
      ),
      borderRadius: BorderRadius.circular(
        25,
      ),
    ),
  );
}
