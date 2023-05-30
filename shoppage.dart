import 'package:coffeeshop/components/coffetile.dart';
import 'package:coffeeshop/models/shop.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/coffee.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  //add to cart:
  void AddtoCart(Coffee coffee){
    Provider.of<CoffeeShop>(context,listen: false).additemtoCart(coffee);

    //added to the cart message:
    showDialog(context: context,
        builder: (context)=>AlertDialog(
          title: Text("Successfully added to the cart",style: TextStyle(color: Color(0xFF46494c),fontSize: 12),),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          backgroundColor: Color(0xFFe6ccb2),
        ));

  }



  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>
      (builder:(context, value, child) => SafeArea(
        child:Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              //heading message
              Text("Which Item Would You Like To Order ?",style: TextStyle(fontSize: 20),),

              SizedBox(height: 25),

              //List of Drinks to Buy:

              Expanded(child:ListView.builder(itemCount:value.coffeeshop.length ,
                  itemBuilder: (context,index){
                //get individual Drink:
                Coffee eachdrink = value.coffeeshop[index];

                //return the tile for this Drink;
                return CoffeeTile(coffee: eachdrink ,
                    icon: Icon(Icons.add,),
                    onPressed:(){
                  AddtoCart(eachdrink);

                });


              }
              ),
              ),

            ],


          ),
        )
    ));

  }
}
