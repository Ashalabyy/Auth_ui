import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  static const RouteName = '/ProductScreen';

  @override
  Widget build(BuildContext context) {
    final Sizes = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        color: Colors.amber,
        height: Sizes.height,
        width: Sizes.width,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              top: 140,
              left: 90,
              child: SizedBox(
                height: 100,
                width: 100,
                child: ClipRRect(
                  child: CircleAvatar(),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            ),
            Positioned(
              top: 140,
              left: 170,
              child: SizedBox(
                height: 100,
                width: 100,
                child: ClipRRect(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            ),
            Positioned(
              top: 70,
              left: 260,
              child: SizedBox(
                height: 80,
                width: 80,
                child: ClipRRect(
                  child: CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            ),
            Positioned(
              top: 175,
              left: 280,
              child: SizedBox(
                height: 100,
                width: 100,
                child: ClipRRect(
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            ),
            Positioned(
              top: 260,
              left: 190,
              child: SizedBox(
                height: 50,
                width: 50,
                child: ClipRRect(
                  child: CircleAvatar(),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            ),
            Positioned(
              top: 300,
              right: 60.0,
              child: SizedBox(
                height: 100,
                width: 100,
                child: ClipRRect(
                  child: CircleAvatar(
                    maxRadius: 10,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            ),
            Positioned(
              top: 140,
              left: -10.0,
              child: SizedBox(
                height: 50,
                width: 50,
                child: ClipRRect(
                  child: CircleAvatar(
                    minRadius: 20,
                  ),
                  borderRadius: BorderRadius.circular(100.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
