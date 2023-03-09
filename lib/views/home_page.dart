import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:simple_bazaar/models/category.dart';
import 'package:get/get.dart' hide Response;
import '../models/dataFromGeoLocation.dart';
import '../models/product.dart';
import '../models/productByStoreId.dart';
import '../models/store.dart';
import '../routes/Routes.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int idx = 0;
  List<Stores> list = <Stores>[
    // 'Mahalaxmi Store',
    // 'Aradhy Kirana Store',
    // 'Galaxy Traders',
    // 'Random Store',
     //'Your Store Name'
    Stores(name: "Demo Store Name",uid: 2),
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
  ProductByStoreId? productByStoreId;

  Stores? dropdownStore;


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

    // Future.delayed(Duration(seconds: 2), () { // <-- Delay here
    //
    //
    //
    //
    // });

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
      //list.clear();
      for(Stores i in dataFromGeoLocation!.stores!){
        list.add(i);
      }
      //list.clear();
      if(list.isNotEmpty){
        print("a");
        //dropdownValue=dataFromGeoLocation!.stores![0].name;
        dropdownStore=dataFromGeoLocation!.stores![0];
         getCategoriesApi2(dataFromGeoLocation!.stores![0].uid,5);
        print("b");
        setState(() {

        });
      }
      return true;
    }
    else{
      throw Exception('Failed to load');
    }
    return false;
  }



  getCategoriesApi2(var storeId,var limit) async{
    setState(() {
      isProductsLoading=true;
    });
    //storeId=2;
    print("c");
    Response response = await post(
        Uri.parse(
            "https://simple.zapbase.com/public/api/v1/products/getByStoreId"),
        body: {
          "id": storeId.toString(),
          "limit": limit.toString(),
        });

    setState(() {
      isProductsLoading=false;
    });

    print("d");
    if(response.statusCode==200){
      print("1e");
      var body = jsonDecode(response.body.toString());
      //print(body);
      print("2e");
      print(body["success"]);
      productByStoreId = ProductByStoreId.fromJson(body);
      setState(() {

      });
      print("3e");
      print(productByStoreId);
      print(productByStoreId!.data!.length);
      print("4e");
    }
    else{
      print("not successful");
      print("f");
    }
    print("g");
    return;
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
                          child: Text("4",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 11, color: Colors.white))
                      ))
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
                Get.toNamed(PageRoutes.account_page)!.then((value){
                  setState(() {
                    idx=0;
                  });
                });
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
            if (snapshot.hasData) {
              return SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 20.0, right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                                  if(list.length>0)Container(
                                    height: 30,
                                    child: DropdownButtonHideUnderline(
                                      child: DropdownButton<Stores>(
                                        value: dropdownStore,
                                        icon:
                                            const Icon(Icons.keyboard_arrow_down),
                                        elevation: 16,
                                        //iconSize: 20,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18,
                                            color: Colors.black),

                                        onChanged: (Stores? value) {
                                          // This is called when the user selects an item.
                                          print("222222222222");
                                          setState(() {
                                            print("1111111111111");
                                            dropdownStore = value!;
                                            print(dropdownStore!.uid.toString()+"  "+dropdownStore!.name!);
                                            getCategoriesApi2(dropdownStore!.uid,5);
                                          });
                                        },
                                        selectedItemBuilder:
                                            (BuildContext context) {
                                          //<-- SEE HERE
                                          return list.map((Stores value) {
                                            return Center(
                                              child: Container(
                                                //margin: EdgeInsets.only(top: 5),
                                                child: Text(
                                                  dropdownStore!.name!,
                                                  style: const TextStyle(
                                                      fontWeight: FontWeight.w500,
                                                      fontSize: 18,
                                                      color: Colors.black),
                                                ),
                                              ),
                                            );
                                          }).toList();
                                        },
                                        items: list.map((Stores value) {
                                          return DropdownMenuItem<Stores>(
                                            value: value,
                                            child: Text(
                                              value.name!,
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
                                  ),
                                  Text("Delivery In 15 mins",
                                      textAlign: TextAlign.center,
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
                              arguments: [categoriesData, "SearchProduct"]);
                          if (temp != null) {
                            FocusScope.of(context).requestFocus(FocusNode());
                          }
                        },
                        autofocus: false,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                          prefixIcon: Icon(
                            Icons.search,
                             size: 22,
                            color: Color.fromRGBO(214, 31, 38, 1),
                          ),
                          hintText: "Search category",
                          hintStyle: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(151, 152, 153, 1),
                          )
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
                        physics: BouncingScrollPhysics(),
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
                                  arguments: [dataFromGeoLocation!.category, "SellAllCategory"]);
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
                      height: 145,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemCount: dataFromGeoLocation!.category!.length,
                        itemBuilder: (context, index) {
                          return buildCategoriesItems(index);
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
                    !isProductsLoading?Container(
                      margin: EdgeInsets.only(left: 18, right: 18),
                      child: GridView.builder(
                          //   scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          //physics: BouncingScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 6,
                          ),
                          //itemCount: productByStoreId!.data!.length,
                          itemCount: productByStoreId!=null?productByStoreId!.data!.length:0,
                          itemBuilder: (BuildContext context, int index) {
                            return buildProductItems(index);
                          }),
                    ):CircularProgressIndicator(color: Color.fromRGBO(214, 31, 38, 1),),
                    SizedBox(height: 20,),
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

  buildCategoriesItems(int idx) {
    var temp = dataFromGeoLocation!.category;
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10),
      width: 80,
      child: Column(
        children: [
          Container(
            // width: 80,
             height: 80,
            child: CachedNetworkImage(
              key: UniqueKey(),
              imageUrl: "https://simple.zapbase.com/public/storage/images/" + temp![idx].cover!,
              placeholder: (context, url) => Center(child: CircularProgressIndicator(color: Color.fromRGBO(214, 31, 38, 1))),
              errorWidget: (context, url, error) => Icon(Icons.error,color: Color.fromRGBO(214, 31, 38, 1),),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            temp![idx].name!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }

  bool isProductsLoading=false;



  buildProductItems(int idx){
    return GestureDetector(
      onTap: (){
        Get.toNamed(PageRoutes.product_detail_page,arguments: [productByStoreId!.data![idx]]);
      },
      child: Container(
        padding: EdgeInsets.only(left: 16, right: 10,top: 10,bottom: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: Color.fromRGBO(243, 245, 247, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              // child: Image.network(
              //     "https://simple.zapbase.com/public/storage/images/" +
              //         productByStoreId!.data![idx]!.cover!),
              child: CachedNetworkImage(
                key: UniqueKey(),
                imageUrl: "https://simple.zapbase.com/public/storage/images/"+productByStoreId!.data![idx]!.cover!,
                placeholder: (context, url) => Center(child: CircularProgressIndicator(color: Color.fromRGBO(214, 31, 38, 1))),
                errorWidget: (context, url, error) => Icon(Icons.error,color: Color.fromRGBO(214, 31, 38, 1),),
              ),
              // height: 90,
              // width: 80,
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Text(
                  productByStoreId!.data![idx]!.name!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15),
                ),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${getQuantity(productByStoreId!.data![idx])}, \u{20B9}${productByStoreId!.data![idx]!.originalPrice!}",
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
    );
  }

  String getQuantity(ProductDetails productDetails){
    if(productDetails.haveGram!=0){
      return productDetails.gram!+"g";
    }
    else if(productDetails.haveKg!=0){
      return productDetails.kg!+"Kg";
    }
    else if(productDetails.haveLiter!=0){
      return productDetails.liter!+"L";
    }
    else if(productDetails.haveMl!=0){
      return productDetails.ml!+"ml";
    }
    else if(productDetails.havePcs!=0){
      return productDetails.pcs!+"pcs";
    }
    return "";
  }


}
