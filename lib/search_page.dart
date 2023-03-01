import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:page_transition/page_transition.dart';
import 'package:simple_bazaar/product_detail_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  int idx=0;
  final List<String> testing = ['Baby Foods', 'Confectionery', 'Coffee', 'Packets & Units','Packets & Units unis', 'Processed Cheese', 'Factional Care', 'Sauce', 'Sauce'];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 245, 249, 1),
      appBar: AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        leading: const BackButton(
          color: Colors.red,
        ),
        title: Container(
          //padding: EdgeInsets.all(10),
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
                color: Colors.grey,
              ),
              suffixIcon: Icon(
                Icons.filter_list,
                color: Colors.grey,
              ),
              hintText: "Search category",
            ),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,),
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

      body: Container(
        padding: EdgeInsets.only(left: 16,right: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 21,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Search History",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black)),
                  Text("clear",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.red)),
                ],
              ),
              SizedBox(height: 10,),
              Wrap(
                spacing: 8, // space between items
                children: testing
                    .map((e) => Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(e,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10,color: Colors.grey)),
                ))
                    .toList(),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Discover more",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,color: Colors.black)),
                  Text("clear",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Colors.red)),
                ],
              ),
              SizedBox(height: 10,),
              Wrap(
                spacing: 8, // space between items
                children: testing
                    .map((e) => Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(e,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 10,color: Colors.grey)),
                ))
                    .toList(),
              ),
              SizedBox(height: 80,),
              GestureDetector(
                onTap: (){Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: ProductDetailPage()));},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: MediaQuery.of(context).size.width/2.3,
                        height: 60,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.camera_alt_outlined),
                            Text("Image Search"),
                          ],
                        )
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width/2.3,
                        height: 60,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.mic),
                            Text("Voice Search"),
                          ],
                        )
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
    //244, 245, 249, 1
  }
}
