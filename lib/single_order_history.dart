import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'faq_page.dart';

class SingleOrderHistory extends StatefulWidget {
  const SingleOrderHistory({Key? key}) : super(key: key);

  @override
  State<SingleOrderHistory> createState() => _SingleOrderHistoryState();
}

class _SingleOrderHistoryState extends State<SingleOrderHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        leading: const BackButton(
          color: Colors.red,
        ),
        title: GestureDetector(
          onTap: (){},
          child: Column(
            children: [
              const Text(
                "Order #9087",
                style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w500),
              ),
              const Text(
                "Delivered on 15 Jan, 9:19 AM",
                style: TextStyle(color: Color.fromRGBO(134, 136, 137, 1), fontSize: 14,fontWeight: FontWeight.w500),
              ),
            ],
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
              Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: FAQPAge()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red
            ),
            child: Text("Repeat Order",style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 34,right: 34),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Standard Delivery",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      ),),
                      //134, 136, 137, 1
                      Text("FREE",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(0, 199, 79, 1)
                      ),),
                    ],
                  ),
                  Container(width:MediaQuery.of(context).size.width/1.8,
                      child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumym",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(134, 136, 137, 1)
                      ),)
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(left: 34,right: 34,top: 18,bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Capcicum Bell\npepper red",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black
                            ),),
                            //134, 136, 137, 1
                            Text("Rs. 50/-",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                            ),),
                          ],
                        ),

                        SizedBox(height: 5,),
                        Container(width:MediaQuery.of(context).size.width/1.8,
                            child: Text("2 kg",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(214, 31, 38, 1)
                            ),)
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(left: 34,right: 34,top: 18,bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Capcicum Bell\npepper red",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black
                            ),),
                            //134, 136, 137, 1
                            Text("Rs. 50/-",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                            ),),
                          ],
                        ),

                        SizedBox(height: 5,),
                        Container(width:MediaQuery.of(context).size.width/1.8,
                            child: Text("2 kg",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(214, 31, 38, 1)
                            ),)
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    color: Colors.white,
                    padding: EdgeInsets.only(left: 34,right: 34,top: 18,bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Capcicum Bell\npepper red",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black
                            ),),
                            //134, 136, 137, 1
                            Text("Rs. 50/-",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black
                            ),),
                          ],
                        ),

                        SizedBox(height: 5,),
                        Container(width:MediaQuery.of(context).size.width/1.8,
                            child: Text("2 kg",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(214, 31, 38, 1)
                            ),)
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 34,right: 34,top: 16,bottom: 12),
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    child: Text("Order Summery",style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                    ),),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Subtotal",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(26, 26, 26, 1)
                            ),),
                            Text("Rs. 320/-",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(214, 31, 38, 1)
                            ),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Tax",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(26, 26, 26, 1)
                            ),),
                            Text("Rs. 20/-",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(214, 31, 38, 1)
                            ),),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("In-Store Pick Up",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(26, 26, 26, 1)
                            ),),
                            Text("00.00/-",style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(214, 31, 38, 1)
                            ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total:",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(26, 26, 26, 1)
                      ),),
                      Text("Rs. 340/-",style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(214, 31, 38, 1)
                      ),),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 34,right: 34,top: 16,bottom: 22),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Payment Method",style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(26, 26, 26, 1)
                  ),),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.apple,size: 25,),
                          SizedBox(width: 10,),
                          Text("Apple Pay",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(26, 26, 26, 1)
                          ),)
                        ],
                      ),
                      Icon(Icons.done,size: 30,color: Color.fromRGBO(0, 199, 79, 1),)
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 34,right: 34,top: 16,bottom: 22),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Need Help with order?",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(26, 26, 26, 1)
                      ),),
                      Icon(Icons.arrow_forward_ios_outlined,size: 30,color: Color.fromRGBO(214, 31, 38, 1),)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Divider(),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Contact Us",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Color.fromRGBO(26, 26, 26, 1)
                      ),),
                      Row(
                        children: [
                          Icon(Icons.mail_outline,size: 30,color: Color.fromRGBO(134, 136, 137, 1),),
                          SizedBox(width: 15,),
                          Icon(Icons.call_outlined,size: 30,color: Color.fromRGBO(134, 136, 137, 1),),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 80,),
          ],
        ),
      ),
    );
  }
}
