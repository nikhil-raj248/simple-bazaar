import 'package:flutter/material.dart';
import 'package:simple_bazaar/shipping_information_page.dart';

class ShippingMethodPage extends StatefulWidget {
  const ShippingMethodPage({Key? key}) : super(key: key);

  @override
  State<ShippingMethodPage> createState() => _ShippingMethodPageState();
}

class _ShippingMethodPageState extends State<ShippingMethodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackButton(
          color: Colors.red,
        ),
        title: GestureDetector(
          onTap: () {
          },
          child: const Text(
            "Shipping Method",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
        child: SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ShippingInformationPage()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red
            ),
            child: Text("Next",style: TextStyle(color: Colors.white),),
          ),
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 22,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromRGBO(214, 31, 38, 1)
                      ),
                      child: Text("1",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
                    ),
                    SizedBox(height: 6,),
                    Text("Delivery",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(134, 136, 137, 1))),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Container(
                    height: 1,
                    width: 50,
                    color: Color.fromRGBO(214, 31, 38, 1),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        border: Border.all(color: Color.fromRGBO(134, 136, 137, 1),width: 0.2),
                      ),
                      child: Text("2",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(134, 136, 137, 1))),
                    ),
                    SizedBox(height: 6,),
                    Text("Address",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(134, 136, 137, 1))),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Container(
                    height: 1,
                    width: 50,
                    color: Color.fromRGBO(214, 31, 38, 1),
                  ),
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        border: Border.all(color: Color.fromRGBO(134, 136, 137, 1),width: 0.2),
                      ),
                      child: Text("3",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(134, 136, 137, 1))),
                    ),
                    SizedBox(height: 6,),
                    Text("Payment",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(134, 136, 137, 1))),
                  ],
                ),
              ],
            ),
            SizedBox(height: 52,),
            Container(
              margin: EdgeInsets.only(left: 17,right: 17),
              padding: EdgeInsets.only(left: 17,right: 17,top: 23,bottom: 23),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Standard Delivery",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w600,
                              color: Colors.black)),
                      SizedBox(height: 12,),
                      Text("Order will be delivered between 15 minutes\nstraights to your doorstep.",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(134, 136, 137, 1))),
                    ],
                  ),
                  Text("\$3",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(214, 31, 38, 1))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
