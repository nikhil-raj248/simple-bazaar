import 'package:flutter/material.dart';

import 'cart_empty_page.dart';

class MyAddressPage extends StatefulWidget {
  const MyAddressPage({Key? key}) : super(key: key);

  @override
  State<MyAddressPage> createState() => _MyAddressPageState();
}

class _MyAddressPageState extends State<MyAddressPage> {
  bool flag=false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const BackButton(
          color: Color.fromRGBO(214, 31, 38, 1),
        ),
        actions: [
          Container(
            // height: 23,
            // width: 23,
            margin: EdgeInsets.only(right: 15),
            child: Icon(
              Icons.add_circle_outline,
              color: Color.fromRGBO(214, 31, 38, 1),
            ),
          ),
          //SizedBox(width: 15,),
        ],
        title: GestureDetector(
          onTap: () {},
          child: const Text(
            "My Address",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
        child: SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const CartEmptyPage()));
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text(
              "Save settings",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white
                    ),
                    margin: EdgeInsets.only(left: 17,right: 17,top: 29),
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.centerLeft,
                          child: FittedBox(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              child: Text("DEFAULT",style: TextStyle(fontSize:10,fontWeight:FontWeight.w500,color: Color.fromRGBO(214, 31, 38, 1)),),
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(214, 31, 38, 0.2),
                              ),

                            ),
                          ),
                        ),
                        Container(
                          height: 130,
                          decoration:
                          BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
                          margin: EdgeInsets.only(left: 17, right: 17),
                          padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 66,
                                    height: 66,
                                    padding: EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(33),
                                      color: Color.fromRGBO(214, 31, 38, 0.1),
                                    ),
                                    child: Icon(
                                      Icons.location_on_outlined,
                                      size: 30,
                                      color: Color.fromRGBO(214, 31, 38, 1),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Arun Goyal",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600, fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 2,
                                      ),
                                      Text(
                                        "2811 Crescent Day. LA Port\nNew Delhi -  77571",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12,
                                            color: Color.fromRGBO(134, 136, 137, 1)),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("+91 9824110345",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10,
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                  padding: EdgeInsets.only(right: 10),
                                  child: Icon(Icons.arrow_circle_up_outlined,
                                    color: Color.fromRGBO(214, 31, 38, 1),)
                              )
                            ],
                          ),
                        ),
                        Divider(thickness: 1,),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 17, right: 17),
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true, //<-- SEE HERE
                                fillColor: Color.fromRGBO(244, 245, 249, 1),
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
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 17, right: 17),
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true, //<-- SEE HERE
                                fillColor: Color.fromRGBO(244, 245, 249, 1),
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
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 17, right: 5),
                              width: MediaQuery.of(context).size.width / 2.6,
                              child: TextField(
                                decoration: InputDecoration(
                                    filled: true, //<-- SEE HERE
                                    fillColor: Color.fromRGBO(244, 245, 249, 1),
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
                                        fontSize: 15)),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 5, right: 17),
                              width: MediaQuery.of(context).size.width / 2.6,
                              child: TextField(
                                decoration: InputDecoration(
                                    filled: true, //<-- SEE HERE
                                    fillColor: Color.fromRGBO(244, 245, 249, 1),
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
                                        fontSize: 15)),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 17, right: 17),
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true, //<-- SEE HERE
                                fillColor: Color.fromRGBO(244, 245, 249, 1),
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
                                )),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.only(left: 17, right: 17),
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true, //<-- SEE HERE
                                fillColor: Color.fromRGBO(244, 245, 249, 1),
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
                                )),
                          ),
                        ),
                        Padding(
                          padding:
                          const EdgeInsets.only(left: 30.0, top: 10, bottom: 10),
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
                              Text(
                                "Make default",
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 130,
                    decoration:
                    BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
                    margin: EdgeInsets.only(left: 17, right: 17),
                    padding: EdgeInsets.only(left: 27, top: 10, bottom: 10,right: 17),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 66,
                              height: 66,
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(33),
                                color: Color.fromRGBO(214, 31, 38, 0.1),
                              ),
                              child: Icon(
                                Icons.location_on_outlined,
                                size: 30,
                                color: Color.fromRGBO(214, 31, 38, 1),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Arun Goyal",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600, fontSize: 15),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "2811 Crescent Day. LA Port\nNew Delhi -  77571",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12,
                                      color: Color.fromRGBO(134, 136, 137, 1)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text("+91 9824110345",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10,
                                    )),
                              ],
                            ),
                          ],
                        ),
                        Container(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(Icons.arrow_circle_up_outlined,
                              color: Color.fromRGBO(214, 31, 38, 1),)
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
