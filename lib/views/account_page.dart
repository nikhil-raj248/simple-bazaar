import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_bazaar/notifications_page.dart';

import '../routes/Routes.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  int idx=4;
  var user;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    solve();
  }

  Future<dynamic> getEmail() async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    String email=pref.getString("hasUser")!;
    user = await json.decode(email);
    return user;
  }

  solve() async {
    // SharedPreferences pref = await SharedPreferences.getInstance();
    // String? encodedMap = await pref.getString('hasUser');
    // user = await json.decode(encodedMap!);
    // // user =  pref.get("hasUser");
    //  print("11111111");
    //  print(user);
    //  print("11111111");
  }


  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    print(user);
    //solve();
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.only(left:40,top: 10,right: 40),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  idx=0;
                });
                Get.offAllNamed(PageRoutes.home_page);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 13.0),
                child: Column(
                  children: [
                    Icon(Icons.home,color: (idx==0)?Colors.red:null,),
                    Text("Home",style: TextStyle(fontSize: 10,color: (idx==0)?Colors.red:null),)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  idx=1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 13.0),
                child: Column(
                  children: [
                    Icon(Icons.grid_view,color: (idx==1)?Colors.red:null),
                    Text("Payments",style: TextStyle(fontSize: 10,color: (idx==1)?Colors.red:null),)
                  ],
                ),
              ),
            ),
            Container(
              height: 70,
              child: Stack(
                children: [
                  Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromRGBO(214, 31, 38, 1),
                      ),
                      child: Icon(Icons.shopping_cart_outlined,color: Colors.white,)
                  ),
                  Positioned(top:38,left: 16,
                      child: Container(
                          height: 18,
                          width: 18,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: Colors.white),
                            color: Colors.red,
                          ),
                          child:
                          Text("${4}",style: TextStyle(fontSize: 15,color: Colors.white))
                      )
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  idx=3;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 13.0),
                child: Column(
                  children: [
                    Icon(Icons.event_note,color: (idx==3)?Colors.red:null),
                    Text("Card",style: TextStyle(fontSize: 10,color: (idx==3)?Colors.red:null),)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  idx=4;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 13.0),
                child: Column(
                  children: [
                    Icon(Icons.person,color: (idx==4)?Colors.red:null),
                    Text("Mode",style: TextStyle(fontSize: 10,color: (idx==4)?Colors.red:null),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SafeArea(
        child: FutureBuilder(
          future: getEmail() ,
          builder: (ctx,snapshot){
            if(!snapshot.hasData){
              return CircularProgressIndicator();
            }
            return SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height*0.2,
                        margin: EdgeInsets.only(bottom: size.width/5),
                        decoration: BoxDecoration(
                            color: Colors.white
                        ),
                      ),
                      Positioned(
                        top: size.height*0.2 - size.width/5,
                        child: GestureDetector(
                          onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const NotificationsPage()));},
                          child: CircleAvatar(
                            radius: size.width/5,
                            backgroundImage: NetworkImage("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fA%3D%3D&w=1000&q=80"),
                          ),
                        ),
                      ),
                      Positioned(
                          top: size.height*0.2 + size.width/8,
                          right: size.width/3,
                          child: Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(214, 31, 38, 1),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Icon(Icons.camera_alt_outlined,color: Colors.white,size: 20,)
                          )
                      )
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(height: 10,),
                      Text(snapshot.data["first_name"]+" "+snapshot.data["last_name"],style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20
                      ),),
                      SizedBox(height: 5,),
                      Text(snapshot.data["email"],style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Color.fromRGBO(134, 136, 137, 1)
                      ),),
                      SizedBox(height: 30,),
                      Container(
                        margin: EdgeInsets.only(left: 25,right: 25),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.person_outline,size: 30,color: Color.fromRGBO(214, 31, 38, 1),),
                                    SizedBox(width: 15,),
                                    Text("About me",style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                    ),)
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios_outlined,color: Color.fromRGBO(214, 31, 38, 1))
                              ],
                            ),
                            SizedBox(height: 25,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.person_outline,size: 30,color: Color.fromRGBO(214, 31, 38, 1),),
                                    SizedBox(width: 15,),
                                    Text("My Orders",style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                    ),)
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios_outlined,color: Color.fromRGBO(214, 31, 38, 1))
                              ],
                            ),
                            SizedBox(height: 25,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.favorite_border_outlined,size: 30,color: Color.fromRGBO(214, 31, 38, 1),),
                                    SizedBox(width: 15,),
                                    Text("My Favorites",style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                    ),)
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios_outlined,color: Color.fromRGBO(214, 31, 38, 1))
                              ],
                            ),
                            SizedBox(height: 25,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined,size: 30,color: Color.fromRGBO(214, 31, 38, 1),),
                                    SizedBox(width: 15,),
                                    Text("My Address",style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                    ),)
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios_outlined,color: Color.fromRGBO(214, 31, 38, 1))
                              ],
                            ),
                            SizedBox(height: 25,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.credit_card,size: 30,color: Color.fromRGBO(214, 31, 38, 1),),
                                    SizedBox(width: 15,),
                                    Text("Credit Cards",style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                    ),)
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios_outlined,color: Color.fromRGBO(214, 31, 38, 1))
                              ],
                            ),
                            SizedBox(height: 25,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.currency_rupee_outlined,size: 30,color: Color.fromRGBO(214, 31, 38, 1),),
                                    SizedBox(width: 15,),
                                    Text("Transactions",style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15
                                    ),)
                                  ],
                                ),
                                Icon(Icons.arrow_forward_ios_outlined,color: Color.fromRGBO(214, 31, 38, 1))
                              ],
                            ),
                            SizedBox(height: 25,),
                            GestureDetector(
                              onTap: (){
                                abcd();
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(Icons.notifications_none_outlined,size: 30,color: Color.fromRGBO(214, 31, 38, 1),),
                                      SizedBox(width: 15,),
                                      Text("FAQ",style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 15
                                      ),)
                                    ],
                                  ),
                                  Icon(Icons.arrow_forward_ios_outlined,color: Color.fromRGBO(214, 31, 38, 1))
                                ],
                              ),
                            ),
                            SizedBox(height: 25,),
                            GestureDetector(
                              onTap: (){
                                logoutFunction();
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Icon(Icons.arrow_back,size: 30,color: Color.fromRGBO(214, 31, 38, 1),),
                                  SizedBox(width: 15,),
                                  Text("Sign out",style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15
                                  ),),
                                ],
                              ),
                            ),
                            SizedBox(height: 90,),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
  abcd()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    print(pref.getString("email"));
  }
  logoutFunction()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.remove("email");

    Get.offAllNamed(PageRoutes.login_page);
  }
}
