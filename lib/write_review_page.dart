import 'package:flutter/material.dart';
import 'package:simple_bazaar/single_order_history.dart';

class WriteReviewPage extends StatefulWidget {
  const WriteReviewPage({Key? key}) : super(key: key);

  @override
  State<WriteReviewPage> createState() => _WriteReviewPageState();
}

class _WriteReviewPageState extends State<WriteReviewPage> {
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
            "Write Reviews",
            style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w700),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 20,right: 20,bottom: 10),
        child: SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const SingleOrderHistory()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red
            ),
            child: Text("Submit",style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("What do you think ?",style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.black
              ),),
              SizedBox(height: 10,),
              Text("please give your rating by clicking on\nthe stars below",textAlign: TextAlign.center,style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Color.fromRGBO(134, 136, 137, 1)
              ),),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star,size: 40,color: Colors.yellow,),
                  Icon(Icons.star,size: 40,color: Colors.yellow,),
                  Icon(Icons.star,size: 40,color: Colors.yellow,),
                  Icon(Icons.star,size: 40,color: Colors.yellow,),
                  Icon(Icons.star,size: 40,color: Color.fromRGBO(205, 205, 205, 1),),
                ],
              ),
              SizedBox(height: 35,),
              Container(
                margin: EdgeInsets.only(left: 17,right: 17),
                height: 100,
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,

                  maxLines: null,
                  expands: true,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    filled: true, //<-- SEE HERE
                    fillColor: Colors.white,
                    border: InputBorder.none,
                    //icon: Icon(Icons.edit),
                    // border: OutlineInputBorder(
                    //
                    // ),

                    prefixIcon: Icon(Icons.edit),
                    hintText: "Tell us about your experience",
                    //alignLabelWithHint: true,
                    //labelText: "hello"
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
