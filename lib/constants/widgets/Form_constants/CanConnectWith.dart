import 'package:flutter/material.dart';
import '../../dimensions.dart' as diementions;

class CanConnectWith extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 1, // height: diementions.screenHeight! * 0.004,
          width: diementions.screenwidth! * 0.2,
          color: Colors.grey,
        ),
        Text('you can connect with'),
        Container(
          height: 1,
          width: diementions.screenwidth! * 0.2,
          color: Colors.grey,
        ),
      ],
    );
  }
}
