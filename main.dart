import 'package:coffeeshop/models/shop.dart';
import 'package:coffeeshop/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=>CoffeeShop(),
      builder:(context ,child)=>MaterialApp(
        title: "Coffee Shop App",
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ) ,

    );
  }
}
