import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/Products.dart';
import '../../models/Product.dart';

class ProductDetailScreen extends StatefulWidget {
  static const RouteName = '/ProductDetail';
  int id;
  ProductDetailScreen({this.id = 0});
  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  var NumberofQuantity = 0;

  var price = 566.0;

  var totals = 0.0;

  double total() {
    setState(() {
      totals = NumberofQuantity * price;
    });

    return totals;
  }

  void _increment() {
    setState(() {
      NumberofQuantity++;
    });
  }

  void _decrement() {
    setState(() {
      NumberofQuantity--;
    });
  }

  @override
  void didChangeDependencies() {
    Provider.of<Products>(context).findProductbyId(widget.id);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Products>(context).product;
    final Size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        extendBody: true,
        extendBodyBehindAppBar: true,
        bottomNavigationBar: Container(
          height: Size.height * 0.080,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.red.withOpacity(0.3),
                blurRadius: 4,
                offset: Offset(0, 1),
              ),
            ],
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                          maxRadius: 50,
                          child: Icon(
                            Icons.add,
                            size: 12,
                          ),
                          backgroundColor: Colors.red,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(999),
                        ),
                      ),
                    ),
                    Text(
                      '0',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 60,
                        height: 60,
                        child: CircleAvatar(
                          maxRadius: 50,
                          child: Icon(
                            Icons.remove,
                            size: 12,
                          ),
                          backgroundColor: Colors.red,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(999),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Center(
                    child: Text(
                      'Add to Cart',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(55),
                    color: Colors.red,
                  ),
                  width: Size.width * 0.4,
                  height: Size.height * 0.080,
                ),
              ],
            ),
          ),
        ),
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
                color: Colors.grey,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.orange.withOpacity(0.4),
                    offset: Offset(0, 1),
                    blurRadius: 5,
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
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: Size.height * 0.5,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white,
                      height: Size.height * 0.5,
                      width: double.infinity,
                      child: Center(
                        child: Image.asset(
                          'assets/img/gift3.webp',
                          width: 280,
                          height: 280,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: Size.height * 0.9,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.all(26),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Gift-Box',
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 20,
                            ),
                          ),
                          Container(
                            width: 80,
                            height: 40,
                            child: Center(
                              child: Text(
                                '\$ ${350}',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: double.infinity,
                        height: 100,
                        child: Text(
                          maxLines: 3,
                          '''
amazing gift that matches all people  and also for any Humans  and its avaliable in 4 Countries 
amazing gift that matches all people  and also for any Humans  and its avaliable in 4 Countries 

                          ''',
                          style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ),

                      /* SizedBox(
                        height: 10,
                      ),*/
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          5,
                          (index) => Container(
                            margin: EdgeInsets.all(5),
                            padding: EdgeInsets.all(5),
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[100],
                              image: DecorationImage(
                                fit: BoxFit.contain,
                                image: AssetImage('assets/img/MacBook.png'),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'only 3 avaliable in Stock',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text('people also Shop it with'),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        height: 2,
                        color: Colors.green,
                        thickness: 0.2,
                        endIndent: Size.width * 0.4,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: Size.height * 0.25,
                        width: double.infinity,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 3,
                          itemBuilder: (context, index) => Container(
                            height: Size.height * 0.2,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.red.withOpacity(0.4),
                                  blurRadius: 4,
                                  offset: Offset(0, 1),
                                ),
                              ],
                              borderRadius: BorderRadius.circular(15),
                            ),
                            margin: EdgeInsets.all(6),
                            padding: EdgeInsets.all(4),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.green,
                      offset: Offset(0, 1),
                      blurRadius: 5,
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
/*Text(
                            totals == 0 ? 'EGP ${price}' : 'EGP ${totals}',
                            style: TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w900,
                            ),
                          ), */

/**
                           bottomNavigationBar: NumberofQuantity == 0
            ? Container(
                color: Colors.white,
                width: Size.width * 0.65,
                height: Size.height * 0.055,
              )
            : Padding(
                padding: const EdgeInsets.all(18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: Size.width * 0.65,
                      height: Size.height * 0.055,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(
                          4,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Add to Cart',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  totals == 0 ? ' ${totals}' : ' ${totals}',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(
                                  width: 7,
                                ),
                                Icon(
                                  Icons.keyboard_double_arrow_right_outlined,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
        backgroundColor: Colors.white, 
                            
                           
                           */
