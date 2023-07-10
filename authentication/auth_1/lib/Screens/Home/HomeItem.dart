import '/Screens/Home/ProductDetailScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/Products.dart';
import '../../models/Product.dart';

class HomeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Sizes = MediaQuery.of(context).size;
    print('widget Rebuild once');
    //  final ListOfprods =
    //    Provider.of<Products>(context, listen: true).productList;

    return Container(
      // padding: EdgeInsets.all(12),
      child: FutureBuilder(
        future: Provider.of<Products>(context, listen: false).fetchProducts(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(
                strokeWidth: 9,
                color: Colors.red,
              ),
            );
          } else {
            return Container(
              height: Sizes.height,
              width: Sizes.width,
              decoration: BoxDecoration(
                  /*   image: DecorationImage(
                image: AssetImage(
                  'assets/img/test7.gif',
                ),
                fit: BoxFit.cover,
              ),*/
                  ),
              child: Consumer<Products>(
                builder: (context, value, child) => GridView.builder(
                  itemCount: value.productList.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 15,
                    childAspectRatio: 2 / 3,
                  ),
                  itemBuilder: (context, index) => ChangeNotifierProvider.value(
                    value: value.product,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(
                          ProductDetailScreen.RouteName,
                          arguments: value.product.id as int,
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 10,
                          bottom: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(0, 0.2),
                              blurRadius: 4,
                              color: Color(0xFF023047).withOpacity(0.3),
                            ),
                          ],
                          color: Colors.white,
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(12),
                          child: Column(
                            //mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 120,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      value.productList[index].ImageUrl,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    maxLines: 1,
                                    value.productList[index].title,
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: 0.2,
                                      fontSize: 12,
                                      color: Color(0xFF023047),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        '${value.productList[index].price}',
                                        style: TextStyle(
                                          color: Colors.orange,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Icon(
                                        Icons.favorite_border,
                                        color: Colors.orange,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    value.productList[index].description,
                                    maxLines: 2,
                                    style: TextStyle(
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.grey,
                                      fontSize: 10,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
