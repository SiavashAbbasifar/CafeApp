import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier{

  //Coffee for sale list

  final List<Coffee> _shop =[
  //americano:
    Coffee(name: "Americano", price: 55, imagepath:"assetss/images/icons8-americano-64.png"),
  //espresso:
    Coffee(name: "Espresso", price: 40, imagepath:"assetss/images/icons8-espresso-50.png"),
  //latte:
    Coffee(name: "Latte", price: 60, imagepath:"assetss/images/icons8-latte-64.png"),
  //mocha:
    Coffee(name: "Mocha", price: 60, imagepath:"assetss/images/moca.png"),
  //tea
    Coffee(name: "Tea", price: 40, imagepath:"assetss/images/icons8-tea-50.png"),
  //Cake
    Coffee(name: "Cheese Cake", price: 50, imagepath:"assetss/images/cheese.png"),

];


  //user cart

  List<Coffee> _userCart=[];

  //get Coffee List
  List <Coffee> get coffeeshop =>_shop;

  //get user cart
  List<Coffee> get usercart => _userCart;

  //add item to cart:

  void additemtoCart(Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart

  void removeitemfromCart(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();
  }








}