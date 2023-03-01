import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'order_success_page.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int cnt = 0;

  List items = [
    {
      "name": "Bell Pepper Red",
      "quantity": "1kg, 6\$",
      "count": 1,
      "image": "assets/images/apple.png",
      "id": "1"
    },
    {
      "name": "Bell Pepper Red",
      "quantity": "1kg, 6\$",
      "count": 1,
      "image": "assets/images/apple.png",
      "id": "2"
    },
    {
      "name": "Bell Pepper Red",
      "quantity": "1kg, 6\$",
      "count": 1,
      "image": "assets/images/apple.png",
      "id": "3"
    },
    {
      "name": "Bell Pepper Red",
      "quantity": "1kg, 6\$",
      "count": 1,
      "image": "assets/images/apple.png",
      "id": "4"
    },
    {
      "name": "Bell Pepper Red",
      "quantity": "1kg, 6\$",
      "count": 1,
      "image": "assets/images/apple.png",
      "id": "5"
    },
    {
      "name": "Bell Pepper Red",
      "quantity": "1kg, 6\$",
      "count": 1,
      "image": "assets/images/apple.png",
      "id": "6"
    },
    {
      "name": "Bell Pepper Red",
      "quantity": "1kg, 6\$",
      "count": 1,
      "image": "assets/images/apple.png",
      "id": "7"
    },
  ];


  @override
  Widget build(BuildContext context) {

    Dialog errorDialog = Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)), //this right here
      child: Container(
        //width: MediaQuery.of(context).size.width*0.9,
        height: MediaQuery.of(context).size.height*0.7,
        padding: EdgeInsets.only(left: 25,right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              alignment: Alignment.centerLeft,
              child: GestureDetector(onTap:(){Navigator.of(context).pop();},child: Icon(Icons.close)),
            ),
            Container(
                height: MediaQuery.of(context).size.width/2,
                width: MediaQuery.of(context).size.width/2,
                child: Image.asset("assets/images/grocery.png")
            ),
            Column(
              children: [
                Text("Oops! Order Failed",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25),),
                SizedBox(height: 10,),
                Text("Something went tembly wrong.",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Color.fromRGBO(124, 124, 124, 1)),),
              ],
            ),
            Column(
              children: [
                Container(
                  child: ElevatedButton(
                    onPressed: () {Navigator.of(context).pop();},
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                        backgroundColor: Color.fromRGBO(214, 31, 38, 1),
                      minimumSize: Size.fromHeight(60),
                    ),
                    child: Text(
                      "Please Try Again",
                      style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,color: Colors.white),
                    ),
                  ),
                ),
                TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Back to home",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black),)),
              ],
            ),
            // TextButton(
            //     onPressed: () {
            //       // Navigator.of(context).pop();
            //     },
            //     child: Text(
            //       'Back ',
            //       style: TextStyle(color: Colors.purple, fontSize: 18.0),))
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BackButton(
              color: Color.fromRGBO(214, 31, 38, 1),
            ),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => errorDialog);
              },
              child: Row(
                children: [
                  Text("Cart"),
                  Container(
                      width: 21,
                      height: 21,
                      child: Image.asset("assets/images/basket.png")),
                ],
              ),
            ),
            Icon(
              Icons.circle_rounded,
              color: Colors.white,
            )
          ],
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
        child: SizedBox(
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const OrderSuccessPage()));
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text(
              "Checkout Now",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      body: SlidableAutoCloseBehavior(
        closeWhenOpened: true,
        child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Slidable(
              key: UniqueKey(),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  radius: 30,
                  child: ClipRRect(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(items[index]["image"]),
                    ),
                  ),
                ),
                title: Text(items[index]["name"],
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Colors.black)),
                subtitle: Text(items[index]["quantity"],
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(255, 50, 75, 1))),
                trailing: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            if (items[index]["count"] > 0)
                              items[index]["count"]--;
                          });
                        },
                        child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Color.fromRGBO(243, 245, 247, 1),
                            child: Icon(Icons.remove,
                                color: Color.fromRGBO(151, 152, 153, 1)))),
                    SizedBox(
                      width: 15,
                    ),
                    Text("${items[index]["count"]}",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.black)),
                    SizedBox(
                      width: 15,
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            items[index]["count"]++;
                          });
                        },
                        child: CircleAvatar(
                            backgroundColor: Color.fromRGBO(243, 245, 247, 1),
                            radius: 15,
                            child: Icon(
                              Icons.add,
                              color: Color.fromRGBO(151, 152, 153, 1),
                            ))),
                  ],
                ),
              ),
              endActionPane: ActionPane(
                dismissible: DismissiblePane(
                  onDismissed: () {
                    setState(() {
                      items.removeAt(index);
                    });
                  },
                ),
                motion: BehindMotion(),
                children: [
                  SlidableAction(
                    backgroundColor: Colors.red,
                    icon: Icons.delete,
                    onPressed: (context) {
                      setState(() {
                        items.removeAt(index);
                      });
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
