import 'package:flutter/material.dart';

import 'my_address_page.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({Key? key}) : super(key: key);

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
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
            "Add Credit Card",
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MyAddressPage()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red
            ),
            child: Text("Add credit card",style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
