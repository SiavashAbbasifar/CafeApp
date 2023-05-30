//import "dart:ffi";
import 'package:coffeeshop/components/total.dart';
import "package:coffeeshop/components/coffetile.dart";
import "package:coffeeshop/models/coffee.dart";
import "package:coffeeshop/models/shop.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  void removefromCart(Coffee coffee){
    Provider.of<CoffeeShop>(context,listen: false).removeitemfromCart(coffee);
  }


//pay button tapped
  void Pay(){

    showCupertinoDialog(context: context, builder: (context)=>CupertinoAlertDialog(
      title: Row(children: [Text("Payment Methods",style: TextStyle(fontSize: 14),),Icon(Icons.payment_outlined)],),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //Divider(),
          TextButton(onPressed: (){}, child: Text("Online Payment")),
          TextButton(onPressed: (){}, child: Text("POS MACHINE")),

        ],
      ),
      actions: [TextButton(onPressed: (){
    Navigator.of(context).pop();
    },  child:Icon(Icons.check_circle_sharp) )],
    ));


    //Payment Services
  }


  @override
  Widget build(BuildContext context) {
    return Consumer<CoffeeShop>(builder:(context , value , child)=>SafeArea(
      child:
      Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [

            Text("Your Shopping Cart :",style: TextStyle(fontSize: 18),),
            SizedBox(height: 25,),

            Expanded(

                child: ListView.builder(itemCount: value.usercart.length,
                    itemBuilder: (context,index){
                  //get the individual items:
                  Coffee eachCoffee=value.usercart[index];


                  //return the coffee tile:

                  return CoffeeTile(coffee: eachCoffee, onPressed:() {removefromCart(eachCoffee);}, icon: Icon(Icons.remove_circle_outline));


                      },
                ),

                ),


            Container(
              width: 300,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color:Color(0xFF9c6644),),
              padding: EdgeInsets.all(20),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  MaterialButton(
                    onPressed: (){
                      Pay();


                    },
                    child: Text("Click to pay ",style: TextStyle(color: Colors.white),),
                    hoverColor: Color(0xFFc9ada7),
                  ),
                  Icon(Icons.payment_rounded,color: Colors.white),
                ],
              ),
            )
          ],

        ),
      ),
    ) );

  }
}





