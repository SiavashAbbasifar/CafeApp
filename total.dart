import 'package:flutter/material.dart';

import '../models/coffee.dart';

class Total extends StatelessWidget {

  final Coffee coffee;
  Total({super.key,required this.coffee});


  @override
  Widget build(BuildContext context) {
    return
      Container(
        decoration: BoxDecoration(
            color: Color(0xFFede0d4),
            borderRadius: BorderRadius.circular(15)
        ),
        margin: EdgeInsets.only(bottom: 10),
        padding: EdgeInsets.symmetric(vertical: 25,horizontal: 10),

        child: Text("prices : ${coffee.price.toString()} Thousand T")

      );
  }
}
