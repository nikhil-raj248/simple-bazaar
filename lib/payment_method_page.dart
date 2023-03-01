import 'package:flutter/material.dart';

import 'my_card_page.dart';

class PaymentMethodPage extends StatefulWidget {
  const PaymentMethodPage({Key? key}) : super(key: key);

  @override
  State<PaymentMethodPage> createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  bool flag=false;
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
            "Payment Method",
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyCardPage()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red
            ),
            child: Text("Make a  payment",style: TextStyle(color: Colors.white),),
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
                      child: Icon(Icons.done,color:Colors.white),
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
                          color: Color.fromRGBO(214, 31, 38, 1)
                      ),
                      child: Icon(Icons.done,color:Colors.white),
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
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 17.0,right: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.width/4,
                    child: Card(
                      elevation: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.paypal_outlined,color: Color.fromRGBO(134, 136, 137, 1),),
                          SizedBox(height: 8,),
                          Text("Paypal",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(134, 136, 137, 1)))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.width/4,
                    child: Card(
                      elevation: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.credit_card,color: Color.fromRGBO(134, 136, 137, 1),),
                          SizedBox(height: 8,),
                          Text("Credit Card",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(134, 136, 137, 1)))
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width/4,
                    height: MediaQuery.of(context).size.width/4,
                    child: Card(
                      elevation: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.apple,color: Color.fromRGBO(134, 136, 137, 1),),
                          SizedBox(height: 8,),
                          Text("Apple pay",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromRGBO(134, 136, 137, 1)))
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0,right: 17,top: 17),
              child: Image.asset("assets/images/creditcard.png"),
            ),
            SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.only(left: 17,right: 17),
              child: TextField(
                decoration: InputDecoration(
                    filled: true, //<-- SEE HERE
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      //borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: Icon(
                      Icons.person_outline,
                      //color: Colors.red,
                    ),
                    prefixIconColor: Color.fromRGBO(134, 136, 137, 1),
                    hintText: "Name on the card",
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(134, 136, 137, 1),
                    )
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.only(left: 17,right: 17),
              child: TextField(
                decoration: InputDecoration(
                    filled: true, //<-- SEE HERE
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      //borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: Icon(
                      Icons.credit_card,
                      //color: Colors.red,
                    ),
                    prefixIconColor: Color.fromRGBO(134, 136, 137, 1),
                    hintText: "Card number",
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(134, 136, 137, 1),
                    )
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.only(left: 17,right: 5),
                  width: MediaQuery.of(context).size.width/2.15,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true, //<-- SEE HERE
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          //borderRadius: BorderRadius.circular(15),
                        ),
                        prefixIcon: Icon(
                          Icons.calendar_today_outlined,
                          //color: Colors.red,
                        ),
                        prefixIconColor: Color.fromRGBO(134, 136, 137, 1),
                        hintText: "Month / Year",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(134, 136, 137, 1),
                          fontSize: 15
                        )
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 5,right: 17),
                  width: MediaQuery.of(context).size.width/2.15,
                  child: TextField(
                    decoration: InputDecoration(
                        filled: true, //<-- SEE HERE
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          //borderRadius: BorderRadius.circular(15),
                        ),
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          //color: Colors.red,
                        ),
                        prefixIconColor: Color.fromRGBO(134, 136, 137, 1),
                        hintText: "CVV",
                        hintStyle: TextStyle(
                          color: Color.fromRGBO(134, 136, 137, 1),
                            fontSize: 15
                        )
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30.0,top: 10,bottom: 70),
              child: Row(
                children: [
                  Switch(
                    // thumb color (round icon)
                    activeColor: Colors.white,
                    activeTrackColor: Color.fromRGBO(214, 31, 38, 1),
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Color.fromRGBO(200, 200, 200, 1),
                    splashRadius: 50.0,
                    // boolean variable value
                    value: flag,
                    // changes the state of the switch
                    onChanged: (value) => setState(() => flag = value),
                  ),
                  Text("Save this address",style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                  ),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
