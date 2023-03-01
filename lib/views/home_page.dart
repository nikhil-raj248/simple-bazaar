import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:simple_bazaar/models/category.dart';
import 'package:get/get.dart' hide Response;
import '../models/dataFromGeoLocation.dart';
import '../models/store.dart';
import '../routes/Routes.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> categories = ["Fruits", "Vegetables", "Dairy", "Chocolates"];
  int idx = 0;
  List<String> list = <String>[
    // 'Mahalaxmi Store',
    // 'Aradhy Kirana Store',
    // 'Galaxy Traders',
    // 'Random Store',
    // 'Your Store Name'
  ];
  String? dropdownValue;
  List<Category> categoriesData = [];

  late final Future myFuture;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dropdownValue = "";
    categoriesData.clear();
    myFuture= getCategoriesApi();
    print("111111111111");
    //solve();
  }

  DataFromGeoLocation? dataFromGeoLocation;

  solve() async {
    Response response = await post(
        Uri.parse(
            "https://simple.zapbase.com/public/api/v1/home/searchWithGeoLocation"),
        body: {
          "lat": "28.58564283",
          "lng": "77.37528741",
        });
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body.toString());
      print(body);
      dataFromGeoLocation = DataFromGeoLocation.fromJson(body["data"]);
      print(dataFromGeoLocation);

    } else {
      print("hello");
    }
  }

  Future<bool> getCategoriesApi() async {
    // final response =await http.get(Uri.parse("https://simple.zapbase.com/public/api/v1/category/getHome"));
    // var body = jsonDecode(response.body.toString());
    // var data = body["data"];
    // categoriesData.clear();
    // if(response.statusCode==200){
    //   for(Map i in data){
    //     categoriesData.add(Category.fromJson(i));
    //   }
    // }
    // print(categoriesData.length);
    // return categoriesData;

    Response response = await post(
        Uri.parse(
            "https://simple.zapbase.com/public/api/v1/home/searchWithGeoLocation"),
        body: {
          "lat": "28.58564283",
          "lng": "77.37528741",
        });

    print("2222222222222222222");
    if (response.statusCode == 200) {
      var body = jsonDecode(response.body.toString());
      dataFromGeoLocation = DataFromGeoLocation.fromJson(body["data"]);
      print(dataFromGeoLocation);
      list.clear();
      for(Stores i in dataFromGeoLocation!.stores!){
        list.add(i.name!);
      }
      if(list.isNotEmpty){
        dropdownValue=list[0];
        setState(() {

        });
      }
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width = size.width;
    var height = size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 80,
        padding: EdgeInsets.only(left: 40, top: 10, right: 40),
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  idx = 0;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 13.0),
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      color: (idx == 0) ? Color.fromRGBO(214, 31, 38, 1) : null,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          fontSize: 10,
                          color: (idx == 0)
                              ? Color.fromRGBO(214, 31, 38, 1)
                              : null),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  idx = 1;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 13.0),
                child: Column(
                  children: [
                    Icon(Icons.grid_view,
                        color:
                            (idx == 1) ? Color.fromRGBO(214, 31, 38, 1) : null),
                    Text(
                      "Payments",
                      style: TextStyle(
                          fontSize: 10,
                          color: (idx == 1)
                              ? Color.fromRGBO(214, 31, 38, 1)
                              : null),
                    )
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
                      child: Icon(
                        Icons.shopping_cart_outlined,
                        color: Colors.white,
                      )),
                  Positioned(
                      top: 38,
                      left: 16,
                      child: Container(
                          height: 18,
                          width: 18,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            border: Border.all(color: Colors.white),
                            color: Color.fromRGBO(214, 31, 38, 1),
                          ),
                          child: Text("${4}",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.white))))
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  idx = 3;
                });
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 13.0),
                child: Column(
                  children: [
                    Icon(Icons.event_note,
                        color:
                            (idx == 3) ? Color.fromRGBO(214, 31, 38, 1) : null),
                    Text(
                      "Card",
                      style: TextStyle(
                          fontSize: 10,
                          color: (idx == 3)
                              ? Color.fromRGBO(214, 31, 38, 1)
                              : null),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  idx = 4;
                });
                Get.toNamed(PageRoutes.account_page);
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 13.0),
                child: Column(
                  children: [
                    Icon(Icons.person,
                        color:
                            (idx == 4) ? Color.fromRGBO(214, 31, 38, 1) : null),
                    Text(
                      "More",
                      style: TextStyle(
                          fontSize: 10,
                          color: (idx == 4)
                              ? Color.fromRGBO(214, 31, 38, 1)
                              : null),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: myFuture,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.hasData && snapshot.data == true) {
              return SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        //crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 48,
                                height: 48,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(243, 245, 247, 1),
                                    borderRadius: BorderRadius.circular(24)),
                                child: Icon(
                                  Icons.location_on_sharp,
                                  size: 25,
                                  color: Color.fromRGBO(214, 31, 38, 1),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      //Text("Mahalaxmi Store",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black)),
                                      // Icon(Icons.keyboard_arrow_down),
                                      Container(
                                        height: 30,
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton<String>(
                                            value: dropdownValue,
                                            icon:
                                                const Icon(Icons.keyboard_arrow_down),
                                            elevation: 16,
                                            //iconSize: 20,
                                            style: const TextStyle(
                                                fontWeight: FontWeight.w500,
                                                fontSize: 18,
                                                color: Colors.black),

                                            onChanged: (String? value) {
                                              // This is called when the user selects an item.
                                              setState(() {
                                                dropdownValue = value!;
                                              });
                                            },
                                            selectedItemBuilder:
                                                (BuildContext context) {
                                              //<-- SEE HERE
                                              return list.map((String value) {
                                                return Center(
                                                  child: Container(
                                                    //margin: EdgeInsets.only(top: 5),
                                                    child: Text(
                                                      dropdownValue!,
                                                      style: const TextStyle(
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 18,
                                                          color: Colors.black),
                                                    ),
                                                  ),
                                                );
                                              }).toList();
                                            },
                                            items: list.map<DropdownMenuItem<String>>(
                                                (String value) {
                                              return DropdownMenuItem<String>(
                                                value: value,
                                                child: Text(
                                                  value,
                                                  style: TextStyle(
                                                      fontWeight: FontWeight.w400,
                                                      fontSize: 16,
                                                      color: Color.fromRGBO(
                                                          135, 135, 135, 1)),
                                                ),
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Text("Delivery In 15 mins",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color: Colors.grey)),
                                ],
                              ),
                            ],
                          ),

                          //order food button
                          // Container(
                          //   //padding: EdgeInsets.all(13),
                          //   child: ElevatedButton(
                          //     onPressed: () {
                          //       //Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: ExplorePage()));
                          //     },
                          //     style: ElevatedButton.styleFrom(
                          //         backgroundColor: Color.fromRGBO(214, 31, 38, 1),
                          //         elevation: 0,
                          //         shape: RoundedRectangleBorder(
                          //           borderRadius: BorderRadius.circular(30),
                          //         )),
                          //     child: Padding(
                          //       padding: const EdgeInsets.only(top: 5, bottom: 5),
                          //       child: Row(
                          //         children: [
                          //           Text("Order Food",
                          //               style: TextStyle(
                          //                   fontWeight: FontWeight.w500,
                          //                   fontSize: 13,
                          //                   color: Colors.white)),
                          //           Icon(
                          //             Icons.keyboard_arrow_right_outlined,
                          //             color: Colors.white,
                          //           ),
                          //         ],
                          //       ),
                          //     ),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 21.0, right: 21),
                      child: TextField(
                        onTap: () {
                          //Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: ExplorePage()));
                          List<Category> categoriesData = [];
                          var temp = Get.toNamed(PageRoutes.explore_page,
                              arguments: [categoriesData, "product"]);
                          if (temp != null) {
                            FocusScope.of(context).requestFocus(FocusNode());
                          }
                        },
                        autofocus: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color.fromRGBO(214, 31, 38, 1),
                          ),
                          hintText: "Search category",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: height * 0.2,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                              width: width * 1,
                              //margin: EdgeInsets.all(width*0.025),
                              child: Image.asset("assets/images/offer_demo.jpg"));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text("Categories",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                      color: Colors.black)),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                "assets/images/foodface.png",
                                width: 20,
                                height: 20,
                              ),
                            ],
                          ),
                          GestureDetector(
                            onTap: () {
                              Get.toNamed(PageRoutes.explore_page,
                                  arguments: [dataFromGeoLocation!.category, "category"]);
                            },
                            child: Text("See all",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Color.fromRGBO(214, 31, 38, 1))),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Container(
                      height: width * 0.36,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: dataFromGeoLocation!.category!.length,
                        itemBuilder: (context, index) {
                          return buildCategoriesItems(index, width);
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 20,
                        right: 20,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Best selling",
                                style: TextStyle(
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Image.asset(
                                "assets/images/fire.png",
                                width: 20,
                                height: 20,
                              ),
                            ],
                          ),
                          Text("See all",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: Color.fromRGBO(214, 31, 38, 1))),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      child: GridView.builder(
                          //   scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          //physics: BouncingScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 10,
                          ),
                          itemCount: 10,
                          itemBuilder: (BuildContext context, int index) {
                            return GridTile(
                              child: Container(
                                // margin: (index % 2 == 0)
                                //     ? EdgeInsets.only(left: 20)
                                //     : EdgeInsets.only(right: 20),
                                child: Card(
                                  color: Colors.transparent,
                                  elevation: 0,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 16, right: 11),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(17),
                                      color: Color.fromRGBO(243, 245, 247, 1),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          child: Image.asset(
                                              "assets/images/category0.png"),
                                          height: width * 0.18,
                                          width: width * 0.18,
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Bell Pepper Red",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 15),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text("1kg, 4\$",
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w700,
                                                      fontSize: 16,
                                                      color: Color.fromRGBO(
                                                          214, 31, 38, 1),
                                                    )),
                                                Icon(
                                                  Icons.add_circle_rounded,
                                                  color:
                                                      Color.fromRGBO(214, 31, 38, 1),
                                                )
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              );
            }
            else {
              return Center(child: CircularProgressIndicator(color: Color.fromRGBO(214, 31, 38, 1),));
            }
          },
        ),

      ),
    );
  }

  buildCategoriesItems(int idx, var width) {
    var temp = dataFromGeoLocation!.category;
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 10, right: 10),
          width: width * 0.2,
          height: width * 0.18,
          child: Image.network(
              "https://simple.zapbase.com/public/storage/images/" +
                  temp![idx].cover!),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: width * 0.18,
          child: Text(
            temp![idx].name!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
          ),
        )
      ],
    );
  }
}
