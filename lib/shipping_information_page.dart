import 'package:flutter/material.dart';
import 'package:simple_bazaar/payment_method_page.dart';

class ShippingInformationPage extends StatefulWidget {
  const ShippingInformationPage({Key? key}) : super(key: key);

  @override
  State<ShippingInformationPage> createState() => _ShippingInformationPageState();
}

class _ShippingInformationPageState extends State<ShippingInformationPage> {
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
            "Shipping Address",
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PaymentMethodPage()));
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
                      child: Text("2",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white)),
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
                    color: Color.fromRGBO(200, 200, 200, 1),
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
                  hintText: "Name",
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
                      Icons.email_outlined,
                      //color: Colors.red,
                    ),
                    prefixIconColor: Color.fromRGBO(134, 136, 137, 1),
                    hintText: "Email address",
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
                      Icons.phone_outlined,
                      //color: Colors.red,
                    ),
                    prefixIconColor: Color.fromRGBO(134, 136, 137, 1),
                    hintText: "Phone number",
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
                      Icons.location_on_outlined,
                      //color: Colors.red,
                    ),
                    prefixIconColor: Color.fromRGBO(134, 136, 137, 1),
                    hintText: "Address",
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
                      Icons.keyboard_alt_outlined,
                      //color: Colors.red,
                    ),
                    prefixIconColor: Color.fromRGBO(134, 136, 137, 1),
                    hintText: "Zip code",
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
                      Icons.location_city_outlined,
                      //color: Colors.red,
                    ),
                    prefixIconColor: Color.fromRGBO(134, 136, 137, 1),
                    hintText: "City",
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
                      Icons.public,
                      //color: Colors.red,
                    ),
                    prefixIconColor: Color.fromRGBO(134, 136, 137, 1),
                    hintText: "Country",
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(134, 136, 137, 1),
                    )
                ),
              ),
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
