import 'package:flutter/material.dart';

import 'views/account_page.dart';

class MyOrderPage extends StatefulWidget {
  const MyOrderPage({Key? key}) : super(key: key);

  @override
  State<MyOrderPage> createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
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
              Icons.filter_list,
              color: Color.fromRGBO(214, 31, 38, 1),
            ),
          ),
          //SizedBox(width: 15,),
        ],
        title: GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const AccountPage()));
          },
          child: const Text(
            "My Order",
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
            Container(
              margin: EdgeInsets.only(left: 17,right: 17,top: 21),
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 19,top: 21,right: 25,bottom: 21),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.support_agent_outlined,color: Color.fromRGBO(214, 31, 38, 1),),
                            SizedBox(width: 8,),
                            Icon(Icons.arrow_circle_up_outlined,color: Color.fromRGBO(214, 31, 38, 1),)
                          ],
                        )
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    margin: EdgeInsets.only(left: 19,right: 25,top: 20,bottom: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                    //child: Icon(Icons.circle_rounded,color: Color.fromRGBO(214, 31, 38, 1),),
                                  radius: 10,
                                  backgroundColor: Color.fromRGBO(214, 31, 38, 1),
                                ),
                                SizedBox(width: 6,),
                                Text("Order placed",style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600
                                ),)
                              ],
                            ),
                            Text("Oct 19 2022",style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(134, 136, 137, 1)
                            ),)
                          ],
                        ),
                        Container(
                            height: 30,
                            width: 2,
                          margin: EdgeInsets.only(left: 10),
                          color: Color.fromRGBO(214, 31, 38, 1),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  //child: Icon(Icons.circle_rounded,color: Color.fromRGBO(214, 31, 38, 1),),
                                  radius: 10,
                                  backgroundColor: Color.fromRGBO(214, 31, 38, 1),
                                ),
                                SizedBox(width: 6,),
                                Text("Order confirmed",style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600
                                ),)
                              ],
                            ),
                            Text("Oct 20 2022",style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(134, 136, 137, 1)
                            ),)
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 2,
                          margin: EdgeInsets.only(left: 10),
                          color: Color.fromRGBO(214, 31, 38, 1),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  //child: Icon(Icons.circle_rounded,color: Color.fromRGBO(214, 31, 38, 1),),
                                  radius: 10,
                                  backgroundColor: Color.fromRGBO(214, 31, 38, 1),
                                ),
                                SizedBox(width: 6,),
                                Text("Order shipped",style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600
                                ),)
                              ],
                            ),
                            Text("Oct 20 2022",style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(134, 136, 137, 1)
                            ),)
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 2,
                          margin: EdgeInsets.only(left: 10),
                          color: Color.fromRGBO(244, 245, 249, 1),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  //child: Icon(Icons.circle_rounded,color: Color.fromRGBO(214, 31, 38, 1),),
                                  radius: 10,
                                  backgroundColor: Color.fromRGBO(235, 235, 235, 1),
                                ),
                                SizedBox(width: 6,),
                                Text("Out for delivery",style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(134, 136, 137, 1)
                                ),)
                              ],
                            ),
                            Text("pending",style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(134, 136, 137, 1)
                            ),)
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 2,
                          margin: EdgeInsets.only(left: 10),
                          color: Color.fromRGBO(244, 245, 249, 1),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CircleAvatar(
                                  //child: Icon(Icons.circle_rounded,color: Color.fromRGBO(214, 31, 38, 1),),
                                  radius: 10,
                                  backgroundColor: Color.fromRGBO(235, 235, 235, 1),
                                ),
                                SizedBox(width: 6,),
                                Text("Order delivered",style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(134, 136, 137, 1)
                                ),)
                              ],
                            ),
                            Text("pending",style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(134, 136, 137, 1)
                            ),)
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 17,right: 17,top: 10),
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 19,top: 15,right: 25,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            ),
                          ],
                        ),
                        Icon(Icons.support_agent_outlined,color: Color.fromRGBO(214, 31, 38, 1),),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                    margin: EdgeInsets.only(left: 15,right: 15,top: 1,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.circle_rounded,size: 20,color: Color.fromRGBO(235, 235, 235, 1),),
                            SizedBox(width: 10,),
                            Text("Order Delivered",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Color.fromRGBO(134, 136, 137, 1)),),
                          ],
                        ),
                        Text("Aug 29 2022",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color.fromRGBO(134, 136, 137, 1)),)
                      ],
                    )
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 17,right: 17,top: 10),
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 19,top: 15,right: 25,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            ),
                          ],
                        ),
                        Icon(Icons.support_agent_outlined,color: Color.fromRGBO(214, 31, 38, 1),),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                      margin: EdgeInsets.only(left: 15,right: 15,top: 1,bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.circle_rounded,size: 20,color: Color.fromRGBO(235, 235, 235, 1),),
                              SizedBox(width: 10,),
                              Text("Order Delivered",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Color.fromRGBO(134, 136, 137, 1)),),
                            ],
                          ),
                          Text("Aug 29 2022",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color.fromRGBO(134, 136, 137, 1)),)
                        ],
                      )
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 17,right: 17,top: 10),
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 19,top: 15,right: 25,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            ),
                          ],
                        ),
                        Icon(Icons.support_agent_outlined,color: Color.fromRGBO(214, 31, 38, 1),),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                      margin: EdgeInsets.only(left: 15,right: 15,top: 1,bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.circle_rounded,size: 20,color: Color.fromRGBO(235, 235, 235, 1),),
                              SizedBox(width: 10,),
                              Text("Order Delivered",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Color.fromRGBO(134, 136, 137, 1)),),
                            ],
                          ),
                          Text("Aug 29 2022",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color.fromRGBO(134, 136, 137, 1)),)
                        ],
                      )
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 17,right: 17,top: 10),
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 19,top: 15,right: 25,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            ),
                          ],
                        ),
                        Icon(Icons.support_agent_outlined,color: Color.fromRGBO(214, 31, 38, 1),),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                      margin: EdgeInsets.only(left: 15,right: 15,top: 1,bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.circle_rounded,size: 20,color: Color.fromRGBO(235, 235, 235, 1),),
                              SizedBox(width: 10,),
                              Text("Order Delivered",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Color.fromRGBO(134, 136, 137, 1)),),
                            ],
                          ),
                          Text("Aug 29 2022",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color.fromRGBO(134, 136, 137, 1)),)
                        ],
                      )
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 17,right: 17,top: 10),
              decoration: BoxDecoration(
                  color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 19,top: 15,right: 25,bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            ),
                          ],
                        ),
                        Icon(Icons.support_agent_outlined,color: Color.fromRGBO(214, 31, 38, 1),),
                      ],
                    ),
                  ),
                  Divider(),
                  Container(
                      margin: EdgeInsets.only(left: 15,right: 15,top: 1,bottom: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.circle_rounded,size: 20,color: Color.fromRGBO(235, 235, 235, 1),),
                              SizedBox(width: 10,),
                              Text("Order Delivered",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12,color: Color.fromRGBO(134, 136, 137, 1)),),
                            ],
                          ),
                          Text("Aug 29 2022",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Color.fromRGBO(134, 136, 137, 1)),)
                        ],
                      )
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
