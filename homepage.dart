import 'package:coffeeshop/components/bottomnavbar.dart';
import 'package:coffeeshop/const.dart';
import 'package:coffeeshop/pages/cartpage.dart';
import 'package:coffeeshop/pages/shoppage.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'firebase_options.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  //navigate bottom bar:
  int _selectedIndex=0;
  void navigateBottomBar(int index){
    setState(() {

      _selectedIndex=index;

    });
  }

  //pages
  final List<Widget> _pages=
      [
        //shop page:
        ShopPage(),

        //cart page:
        CartPage(),
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundcolor,
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index)=>navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],

    );
  }
}
