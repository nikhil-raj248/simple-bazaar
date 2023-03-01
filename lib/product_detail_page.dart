import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'filter_page.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({Key? key}) : super(key: key);

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  int cnt=0;
  bool isFavourite=false;

  List imageList = [
    {"id": 1, "image_path": 'assets/images/apple.png'},
    {"id": 2, "image_path": 'assets/images/apple.png'},
    {"id": 3, "image_path": 'assets/images/apple.png'}
  ];
  final CarouselController carouselController = CarouselController();
  int curridx=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: BackButton(
          color: Color.fromRGBO(214, 31, 38, 1),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.ios_share,color: Color.fromRGBO(214, 31, 38, 1),),
          ],
        ),
        backgroundColor: Color.fromRGBO(242, 243, 242, 1),
        elevation: 0,),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
        child: SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const FilterPage()));
              },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red
            ),
            child: Text("Add To Cart",style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.33,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25),bottomRight: Radius.circular(25)),
                color: Color.fromRGBO(242, 243, 242, 1),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // SizedBox(
                  //     child: Image.asset("assets/images/apple.png"),
                  //   width: MediaQuery.of(context).size.width*0.5,
                  //   height: MediaQuery.of(context).size.height*0.2,
                  // ),
                  SizedBox(height: MediaQuery.of(context).size.height*0.02,),
                  CarouselSlider(
                    items: imageList
                        .map(
                          (item){return SizedBox(
                    child: Image.asset(item['image_path']),
                    width: MediaQuery.of(context).size.width*0.5,
                    height: MediaQuery.of(context).size.height*0.2,
                  );}
                    )
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      scrollPhysics: const BouncingScrollPhysics(),
                      //autoPlay: true,
                      aspectRatio: 2,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          curridx = index;
                        });
                      },
                    ),
                  ),

                  SizedBox(height: MediaQuery.of(context).size.height*0.03,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imageList.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () => carouselController.animateToPage(entry.key),
                        child: Container(
                          width: curridx == entry.key ? 16 : 3,
                          height: 3.0,
                          margin: const EdgeInsets.symmetric(
                            horizontal: 3.0,
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: curridx == entry.key
                                  ? Color.fromRGBO(83, 177, 117, 1)
                                  : Color.fromRGBO(179, 179, 179, 1)),
                        ),
                      );
                    }).toList(),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,top: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Naturel Red Apple",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Colors.black),),
                          SizedBox(height: 10,),
                          Text("1kg, Price",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.grey),),
                        ],
                      ),
                      GestureDetector(onTap:(){
                        setState(() {
                          isFavourite=!isFavourite;
                        });
                      }, child: Icon((isFavourite)?Icons.favorite:Icons.favorite_border,color: Color.fromRGBO(214, 31, 38, 1),))
                    ],
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          GestureDetector(onTap:(){
                            setState(() {
                              if(cnt>0)cnt--;
                            });
                          },child: Icon(Icons.remove,size: 30,color: Color.fromRGBO(179, 179, 179, 1))),
                          SizedBox(width: 15,),
                          Container(
                              height: 45,
                              width: 45,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17),
                                border: Border.all(color: Color.fromRGBO(226, 226, 226, 1)),
                                //color: Colors.red,
                              ),
                              child:
                              Text("${cnt}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: Colors.black))
                          ),
                          SizedBox(width: 15,),
                          GestureDetector(onTap:(){
                            setState(() {
                              cnt++;
                            });
                          }, child: Icon(Icons.add,size: 30,color: Color.fromRGBO(214, 31, 38, 1),)),
                        ],
                      ),
                      Text("${75}Rs.",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,color: Colors.black),)
                    ],
                  ),
                  SizedBox(height: 30,),
                  Divider(thickness: 1,),
                  SizedBox(height: 18,),
                  Row(
                    children: [
                      Text("Product Detail",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,)),
                      Icon(Icons.keyboard_arrow_down)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text("Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w300,color: Color.fromRGBO(124, 124, 124, 1))),
                  SizedBox(height: 20,),
                  Divider(thickness: 1,),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nutritions",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,)),
                      Row(
                        children: [
                          Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Color.fromRGBO(235, 235, 235, 1),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: Text("100gm",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: Color.fromRGBO(124, 124, 124, 1)))
                          ),
                          Icon(Icons.keyboard_arrow_right),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 17,),
                  Divider(thickness: 1,),
                  SizedBox(height: 17,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Review",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,)),
                      Row(
                        children: [
                          buildRatingStar(4),
                          Icon(Icons.keyboard_arrow_right),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 32,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  buildRatingStar(int n){
    List<Widget> temp=[];
    for(int i=0;i<5;i++){
      if(i<n)temp.add(Icon(Icons.star,color: Colors.deepOrangeAccent,));
      else temp.add(Icon(Icons.star,color: Colors.grey,));
    }
    return Row(
      children: temp,
    );
  }
}
