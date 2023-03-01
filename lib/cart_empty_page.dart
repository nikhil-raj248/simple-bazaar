import 'package:flutter/material.dart';

import 'my_order_page.dart';

class CartEmptyPage extends StatefulWidget {
  const CartEmptyPage({Key? key}) : super(key: key);

  @override
  State<CartEmptyPage> createState() => _CartEmptyPageState();
}

class _CartEmptyPageState extends State<CartEmptyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackButton(
          color: Colors.red,
        ),
        title: GestureDetector(
          onTap: (){},
          child: const Text(
            "Shopping Cart",
            style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w700),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
        child: SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyOrderPage()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red
            ),
            child: Text("Start shopping",style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                  height: 115,
                  width: 100,
                  child: Image.asset("assets/images/redbasket.png")
              ),
              SizedBox(height: 35,),
              Container(
                  alignment: Alignment.center,
                  child: Text("Your cart is empty !",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
              ),
              SizedBox(height: 15,),
              Text("You will get a response within\na few minutes.",textAlign: TextAlign.center,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Color.fromRGBO(134, 136, 137, 1)),),
            ],
          ),
        ),
      ),
    );
  }
}
