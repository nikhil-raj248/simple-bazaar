import 'package:flutter/material.dart';
import 'package:simple_bazaar/track_order_2_page.dart';

class TrackOrderPage extends StatefulWidget {
  const TrackOrderPage({Key? key}) : super(key: key);

  @override
  State<TrackOrderPage> createState() => _TrackOrderPageState();
}

class _TrackOrderPageState extends State<TrackOrderPage> {
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => const TrackOrder2Page()));
          },
          child: const Text(
            "Track Order",
            style: TextStyle(
                color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20,),
            Container(
              height: 120,
              decoration: BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
              margin: EdgeInsets.only(left: 17, right: 17),
              padding: EdgeInsets.only(left: 19, top: 28, bottom: 28),
              child: Row(
                children: [
                  Container(
                      width: 66,
                      height: 66,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(33),
                        color: Color.fromRGBO(214, 31, 38, 0.1),
                      ),
                    child: Image.asset("assets/images/orderNumber.png",color: Color.fromRGBO(214, 31, 38, 1),),
                  ),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Order #90897 ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                      SizedBox(height: 2,),
                      Text("Placed on Octobar 19 2021",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10,color: Color.fromRGBO(134, 136, 137, 1)),),
                      SizedBox(height: 5,),
                      Row(
                        children: [
                          Text("Items: 10",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 10)),
                          SizedBox(width: 14,),
                          Text("Items: 700/- Rs.",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 10))
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 19,),
            Container(
              //height: 553,
              decoration:
                  BoxDecoration(color: Color.fromRGBO(255, 255, 255, 1)),
              margin: EdgeInsets.only(left: 17, right: 17),
              padding: EdgeInsets.only(left: 19, top: 28, bottom: 28),

              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 66,
                            height: 66,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(33),
                              color: Color.fromRGBO(214, 31, 38, 0.1),
                            ),
                            child: Image.asset("assets/images/orderPlaced.png",color: Color.fromRGBO(214, 31, 38, 1),),
                          ),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Order Placed",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                              SizedBox(height: 4,),
                              Text("Dec 3, 2022 |  2:18 P.M",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10,color: Color.fromRGBO(134, 136, 137, 1))),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 33),
                            height: 42,
                            width: 2,
                            color: Color.fromRGBO(214, 31, 38, 1),
                          ),
                          SizedBox(width: 48,),
                          Container(
                            height: 1,
                            width: MediaQuery.of(context).size.width-136,
                            //width: 60,
                            color: Color.fromRGBO(235, 235, 235, 1),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 66,
                            height: 66,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(33),
                              color: Color.fromRGBO(214, 31, 38, 0.1),
                            ),
                            child: Image.asset("assets/images/orderConfirmed.png",color: Color.fromRGBO(214, 31, 38, 1),),
                          ),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Order Confirmed",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                              SizedBox(height: 4,),
                              Text("Dec 3, 2022 |  2:20 P.M",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10,color: Color.fromRGBO(134, 136, 137, 1))),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 33),
                            height: 42,
                            width: 2,
                            color: Color.fromRGBO(214, 31, 38, 1),
                          ),
                          SizedBox(width: 18,),
                          Container(
                            height: 1,
                            width: MediaQuery.of(context).size.width-106,
                            //width: 60,
                            color: Color.fromRGBO(235, 235, 235, 1),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 66,
                            height: 66,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(33),
                              color: Color.fromRGBO(214, 31, 38, 0.1),
                            ),
                            child: Image.asset("assets/images/orderShipped.png",color: Color.fromRGBO(214, 31, 38, 1),),
                          ),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Order Shipped",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                              SizedBox(height: 4,),
                              Text("Dec 3, 2022 |  2:25 P.M",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10,color: Color.fromRGBO(134, 136, 137, 1))),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 33),
                            height: 42,
                            width: 2,
                            color: Color.fromRGBO(235, 235, 235, 1),
                          ),
                          SizedBox(width: 18,),
                          Container(
                            height: 1,
                            width: MediaQuery.of(context).size.width-106,
                            //width: 60,
                            color: Color.fromRGBO(235, 235, 235, 1),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 66,
                            height: 66,
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(33),
                              color: Color.fromRGBO(245, 245, 245, 1),
                            ),
                            child: Image.asset("assets/images/outForDelivery.png",color: Color.fromRGBO(134, 136, 137, 1),),
                          ),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Out for Delivery",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                              SizedBox(height: 4,),
                              Text("Pending",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10,color: Color.fromRGBO(134, 136, 137, 1))),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 33),
                            height: 42,
                            width: 2,
                            color: Color.fromRGBO(235, 235, 235, 1),
                          ),
                          SizedBox(width: 18,),
                          Container(
                            height: 1,
                            width: MediaQuery.of(context).size.width-106,
                            //width: 60,
                            color: Color.fromRGBO(235, 235, 235, 1),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                              width: 66,
                              height: 66,
                            padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(33),
                                color: Color.fromRGBO(245, 245, 245, 1),
                              ),
                            child: Image.asset("assets/images/orderDelivered.png",color: Color.fromRGBO(134, 136, 137, 1),),
                          ),
                          SizedBox(width: 15,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Order Delivered",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15),),
                              SizedBox(height: 4,),
                              Text("Pending",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10,color: Color.fromRGBO(134, 136, 137, 1))),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  // Column(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Column(
                  //       children: [
                  //         Text("Order Placed"),
                  //         Text("Dec 3, 2022 |  2:18 P.M"),
                  //       ],
                  //     ),
                  //     Container(
                  //       height: 2,
                  //       width: 60,
                  //       color: Color.fromRGBO(235, 235, 235, 1),
                  //     ),
                  //     Column(
                  //       children: [
                  //         Text("Order Placed"),
                  //         Text("Dec 3, 2022 |  2:18 P.M"),
                  //       ],
                  //     ),
                  //     Container(
                  //       height: 2,
                  //       width: 60,
                  //       color: Color.fromRGBO(235, 235, 235, 1),
                  //     ),
                  //     Column(
                  //       children: [
                  //         Text("Order Placed"),
                  //         Text("Dec 3, 2022 |  2:18 P.M"),
                  //       ],
                  //     ),
                  //     Container(
                  //       height: 2,
                  //       width: 60,
                  //       color: Color.fromRGBO(235, 235, 235, 1),
                  //     ),
                  //     Column(
                  //       children: [
                  //         Text("Order Placed"),
                  //         Text("Dec 3, 2022 |  2:18 P.M"),
                  //       ],
                  //     ),
                  //     Container(
                  //       height: 2,
                  //       width: 60,
                  //       color: Color.fromRGBO(235, 235, 235, 1),
                  //     ),
                  //     Column(
                  //       children: [
                  //         Text("Order Placed"),
                  //         Text("Dec 3, 2022 |  2:18 P.M"),
                  //       ],
                  //     ),
                  //     Container(
                  //       height: 2,
                  //       width: 60,
                  //       color: Color.fromRGBO(235, 235, 235, 1),
                  //     ),
                  //   ],
                  // )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
