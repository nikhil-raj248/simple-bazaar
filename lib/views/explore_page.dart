import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:simple_bazaar/models/subCategory.dart';
import 'package:simple_bazaar/search_page.dart';
import 'package:get/get.dart';
import '../../routes/Routes.dart';
import '../models/category.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {

  int idx=0;
  List<dynamic> itemColors=[
    {"a":Color.fromRGBO(248, 164, 76, 0.1),"b":Color.fromRGBO(248, 164, 76, 0.7)},
    {"a":Color.fromRGBO(83, 177, 117, 0.1),"b":Color.fromRGBO(83, 177, 117, 0.7)},
    {"a":Color.fromRGBO(211, 176, 224, 0.25),"b":Color.fromRGBO(211, 176, 224, 1)},
    {"a":Color.fromRGBO(183, 223, 245, 0.25),"b":Color.fromRGBO(183, 223, 245, 1)},
    {"a":Color.fromRGBO(247, 165, 147, 0.25),"b":Color.fromRGBO(247, 165, 147, 1)},
    {"a":Color.fromRGBO(253, 229, 152, 0.25),"b":Color.fromRGBO(253, 229, 152, 1)},
    {"a":Color.fromRGBO(215, 59, 119, 0.15),"b":Color.fromRGBO(215, 59, 119, 0.5)},
  ];


  List<SubCategory> subCategoriesData=[];
  String pageType="";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //List<SubCategory> subCategoriesData=[];
    List<Category> categoriesData = Get.arguments[0];
    pageType = Get.arguments[1];
    //print(categoriesData.length);
    for(final e in categoriesData!){
        subCategoriesData.addAll(e.subCates as Iterable<SubCategory>);
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;
    return Scaffold(
      backgroundColor: Colors.white,
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
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 13.0),
                child: Column(
                  children: [
                    Icon(Icons.home,color: (idx==0)?Color.fromRGBO(214, 31, 38, 1):null,),
                    Text("Home",style: TextStyle(fontSize: 10,color: (idx==0)?Color.fromRGBO(214, 31, 38, 1):null),)
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
                    Icon(Icons.grid_view,color: (idx==1)?Color.fromRGBO(214, 31, 38, 1):null),
                    Text("Payments",style: TextStyle(fontSize: 10,color: (idx==1)?Color.fromRGBO(214, 31, 38, 1):null),)
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
                            color: Color.fromRGBO(214, 31, 38, 1),
                          ),
                          child: Text("${4}",style: TextStyle(fontSize: 15,color: Colors.white))
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
                    Icon(Icons.event_note,color: (idx==3)?Color.fromRGBO(214, 31, 38, 1):null),
                    Text("Card",style: TextStyle(fontSize: 10,color: (idx==3)?Color.fromRGBO(214, 31, 38, 1):null),)
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
                    Icon(Icons.person,color: (idx==4)?Color.fromRGBO(214, 31, 38, 1):null),
                    Text("Mode",style: TextStyle(fontSize: 10,color: (idx==4)?Color.fromRGBO(214, 31, 38, 1):null),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        leading:  BackButton(
          color: Colors.red,
          onPressed: () {
            Get.back();
          },
        ),
        title:  Text(
          (pageType=="category")?"Find Category":"Find Products",
          style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.white,
        elevation: 0,),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0,right: 25),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(
                  //autofocus: true,
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
                    hintText: (pageType=="category")?"Search Category":"Search Product",
                  ),
                ),
                SizedBox(height: 35,),
                GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    //physics: BouncingScrollPhysics(),
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemCount: subCategoriesData.length,
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
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                border: Border.all(color:itemColors[index%7]["b"]),
                                color: itemColors[index%7]["a"],
                              ),
                              child: Column(
                                children: [
                                  Expanded(
                                      //child: (index%3!=0)?Image.asset("assets/images/fruits.png"):Image.asset("assets/images/cookingoil.png"),
                                    child: Image.network("https://simple.zapbase.com/public/storage/images/"+subCategoriesData[index].cover!),
                                    flex: 3,
                                    // height: 20,
                                    // width: 20,
                                  ),
                                  Expanded(child: SizedBox(height: 10,)),
                                  Expanded(flex:2,
                                      child: Text(subCategoriesData[index].name!,maxLines: 2,overflow: TextOverflow.ellipsis,textAlign: TextAlign.center,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),),
                                      //child: Text((index%3!=0)?"Cooking Oil\n& Ghee":"Fresh Fruits\nand Vegetables",textAlign: TextAlign.center,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700),)
                                  ),
                                ],
                              ),
                            )
                          ),

                        ),
                      );
                    }),

              ],
            ),
          ),
        )
      ),

    );
  }
}
