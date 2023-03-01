import 'package:flutter/material.dart';

import 'cart_page.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(244, 245, 249, 1),
        appBar: AppBar(
          centerTitle: true,
          leading: BackButton(
            color: Color.fromRGBO(214, 31, 38, 1),
          ),
          title: Text("Apply Filters"),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 13.0),
              child: Icon(
                Icons.refresh,
                color: Color.fromRGBO(214, 31, 38, 1),
              ),
            ),
          ],
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
          child: SizedBox(
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const CartPage()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red
              ),
              child: Text("Apply filter",style: TextStyle(color: Colors.white),),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 17, right: 17, top: 20),
                padding: EdgeInsets.all(17),
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text("Price Range",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.black))
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Container(
                            height: 45,
                            //width: MediaQuery.of(context).size.width*0.35,
                            color: Color.fromRGBO(244, 245, 249, 1),
                            alignment: Alignment.center,
                            child: TextField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.only(left: 16),
                                  border: InputBorder.none,
                                  hintText: 'Min.',
                                  hintStyle: TextStyle(color: Color.fromRGBO(134, 136, 137, 1))
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 7,),
                        Expanded(
                          child: Container(
                            height: 45,
                            //width: MediaQuery.of(context).size.width*0.35,
                            color: Color.fromRGBO(244, 245, 249, 1),
                            alignment: Alignment.center,
                            child: TextField(
                              decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 16),
                                  border: InputBorder.none,
                                  hintText: 'Max.',
                                  hintStyle: TextStyle(color: Color.fromRGBO(134, 136, 137, 1))
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 24,),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 19,),
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text("Star Rating",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.black))
                    ),
                    SizedBox(height: 15,),
                    Container(
                      height: 45,
                      padding: EdgeInsets.only(left: 18,right: 13),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(244, 245, 249, 1)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildRatingStar(4),
                          Text("4 stars"),
                        ],
                      ),
                    ),
                    SizedBox(height: 28,),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 19,),
                    Container(
                        alignment: Alignment.centerLeft, child: Text("Others",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.black),)),
                    SizedBox(height: 19,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.discount_outlined,size: 20,color: Colors.grey,),
                            SizedBox(
                              width: 24,
                            ),
                            Text("Discount",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.grey))
                          ],
                        ),
                        Icon(Icons.check_circle_outline_outlined,size: 20,color: Colors.grey,)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.local_shipping_outlined,size: 20,color: Colors.grey,),
                            SizedBox(
                              width: 24,
                            ),
                            Text("Free shipping",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.grey))
                          ],
                        ),
                        Icon(Icons.check_circle_outline_outlined,size: 20,color: Colors.red,)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      thickness: 1,
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.delivery_dining_outlined,size: 20,color: Colors.grey,),
                            SizedBox(
                              width: 24,
                            ),
                            Text("Same day delivery",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 12,color: Colors.grey))
                          ],
                        ),
                        Icon(Icons.check_circle_outline_outlined,size: 20,color: Colors.red,)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  buildRatingStar(int n) {
    List<Widget> temp = [];
    for (int i = 0; i < 5; i++) {
      if (i < n)
        temp.add(Icon(
          Icons.star,
          color: Colors.deepOrangeAccent,
        ));
      else
        temp.add(Icon(
          Icons.star,
          color: Colors.grey,
        ));
    }
    return Row(
      children: temp,
    );
  }
}
