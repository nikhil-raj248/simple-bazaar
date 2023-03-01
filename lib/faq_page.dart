import 'package:flutter/material.dart';

class FAQPAge extends StatefulWidget {
  const FAQPAge({Key? key}) : super(key: key);

  @override
  State<FAQPAge> createState() => _FAQPAgeState();
}

class _FAQPAgeState extends State<FAQPAge> {
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
          onTap: (){},
          child: const Text(
            "FAQ",
            style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w700),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Text("How can we help you?",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.black)),
            SizedBox(height: 25,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              child: TextField(
                decoration: InputDecoration(
                  filled: true, //<-- SEE HERE
                  fillColor: Color.fromRGBO(242, 243, 242, 1),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.red,
                  ),
                  hintText: "Search category",
                ),
              ),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    height: 100,
                    width: 130,
                    // margin: (index % 2 == 0)
                    //     ? EdgeInsets.only(left: 20)
                    //     : EdgeInsets.only(right: 20),
                    child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            //border: Border.all(color:Color.fromRGBO(248, 164, 76, 0.7)),
                            color: Color.fromRGBO(223, 241, 255, 1),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 5),
                                  child: Icon(Icons.notifications_none_outlined,color: Colors.blue,)
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Questions about",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                                    SizedBox(height: 3,),
                                    Text("Getting Started",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              )
                              ],
                          ),
                        )
                    ),

                  ),
                  Container(
                    height: 100,
                    width: 130,
                    // margin: (index % 2 == 0)
                    //     ? EdgeInsets.only(left: 20)
                    //     : EdgeInsets.only(right: 20),
                    child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            //border: Border.all(color:Color.fromRGBO(248, 164, 76, 0.7)),
                            color: Color.fromRGBO(232, 255, 235, 1),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Icon(Icons.settings,color: Colors.green,)
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Questions about",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                                    SizedBox(height: 3,),
                                    Text("Settings",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                    ),

                  ),
                  Container(
                    height: 100,
                    width: 130,
                    // margin: (index % 2 == 0)
                    //     ? EdgeInsets.only(left: 20)
                    //     : EdgeInsets.only(right: 20),
                    child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            //border: Border.all(color:Color.fromRGBO(248, 164, 76, 0.7)),
                            color: Color.fromRGBO(255, 236, 239, 1),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Icon(Icons.currency_rupee_outlined,color: Colors.red,)
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Questions about",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                                    SizedBox(height: 3,),
                                    Text("Payment",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                    ),

                  ),
                  Container(
                    height: 100,
                    width: 130,
                    // margin: (index % 2 == 0)
                    //     ? EdgeInsets.only(left: 20)
                    //     : EdgeInsets.only(right: 20),
                    child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            //border: Border.all(color:Color.fromRGBO(248, 164, 76, 0.7)),
                            color: Color.fromRGBO(223, 241, 255, 1),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Icon(Icons.notifications_none_outlined,color: Colors.blue,)
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Questions about",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                                    SizedBox(height: 3,),
                                    Text("Getting Started",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                    ),

                  ),
                  Container(
                    height: 100,
                    width: 130,
                    // margin: (index % 2 == 0)
                    //     ? EdgeInsets.only(left: 20)
                    //     : EdgeInsets.only(right: 20),
                    child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            //border: Border.all(color:Color.fromRGBO(248, 164, 76, 0.7)),
                            color: Color.fromRGBO(232, 255, 235, 1),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Icon(Icons.settings,color: Colors.green,)
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Questions about",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                                    SizedBox(height: 3,),
                                    Text("Settings",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                    ),

                  ),
                  Container(
                    height: 100,
                    width: 130,
                    // margin: (index % 2 == 0)
                    //     ? EdgeInsets.only(left: 20)
                    //     : EdgeInsets.only(right: 20),
                    child: Card(
                        color: Colors.transparent,
                        elevation: 0,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            //border: Border.all(color:Color.fromRGBO(248, 164, 76, 0.7)),
                            color: Color.fromRGBO(255, 236, 239, 1),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 5),
                                  child: Icon(Icons.currency_rupee_outlined,color: Colors.red,)
                              ),
                              Container(
                                alignment: Alignment.center,
                                child: Column(
                                  // mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Questions about",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),),
                                    SizedBox(height: 3,),
                                    Text("Payment",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w600),),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                    ),

                  ),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 20.0,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top Questions",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black)),
                  Text("View all",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.red)),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color:Color.fromRGBO(217, 217, 217, 1))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width*0.7,
                          child: Text("How to raise complain?",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.black),)),
                      Icon(Icons.remove,color: Colors.red,),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.7,
                      child: Text("Open the Tradebase app to get started and follow the steps. Tradebase doesn’t charge a fee to create or maintain your Tradebase account. Lorem upsum dolor"
                      ,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),
                      ),
                  )
                ],
              ),
            ),
            SizedBox(height: 16,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color:Color.fromRGBO(217, 217, 217, 1))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width*0.7,
                          child: Text("How to add a payment method by this app?",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.black),)),
                      GestureDetector(
                        onTap: (){
                          setState(() {
                            flag=!flag;
                          });
                        },
                          child: Icon(Icons.add,color: Colors.red,)
                      ),
                    ],
                  ),
                  if(flag==true)Container(
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Text("Open the Tradebase app to get started and follow the steps. Tradebase doesn’t charge a fee to create or maintain your Tradebase account. Lorem upsum dolor"
                      ,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 16,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color:Color.fromRGBO(217, 217, 217, 1))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width*0.7,
                          child: Text("How to raise complain?",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.black),)),
                      Icon(Icons.remove,color: Colors.red,),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Text("Open the Tradebase app to get started and follow the steps. Tradebase doesn’t charge a fee to create or maintain your Tradebase account. Lorem upsum dolor"
                      ,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 16,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color:Color.fromRGBO(217, 217, 217, 1))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width*0.7,
                          child: Text("How to raise complain?",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.black),)),
                      Icon(Icons.remove,color: Colors.red,),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Text("Open the Tradebase app to get started and follow the steps. Tradebase doesn’t charge a fee to create or maintain your Tradebase account. Lorem upsum dolor"
                      ,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 16,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color:Color.fromRGBO(217, 217, 217, 1))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width*0.7,
                          child: Text("How to raise complain?",
                            style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.black),)),
                      Icon(Icons.remove,color: Colors.red,),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Text("Open the Tradebase app to get started and follow the steps. Tradebase doesn’t charge a fee to create or maintain your Tradebase account. Lorem upsum dolor"
                      ,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 16,),
            Container(
              margin: EdgeInsets.only(left: 20,right: 20),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color:Color.fromRGBO(217, 217, 217, 1))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width*0.7,
                          child: Text("How to raise complain?",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.black),)),
                      Icon(Icons.remove,color: Colors.red,),
                    ],
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width*0.7,
                    child: Text("Open the Tradebase app to get started and follow the steps. Tradebase doesn’t charge a fee to create or maintain your Tradebase account. Lorem upsum dolor"
                      ,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
