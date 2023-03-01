import 'package:flutter/material.dart';
import 'package:simple_bazaar/write_review_page.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
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
            "Notifications",
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => const WriteReviewPage()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red
            ),
            child: Text("Save Setting",style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 33,),
            Container(
              padding: EdgeInsets.only(left: 17,right: 17,top: 19,bottom: 19),
              margin: EdgeInsets.only(left: 17,right: 17),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Allow Notifcations",style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(height: 16,),
                      Container(width:MediaQuery.of(context).size.width/1.8,child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumym")),
                    ],
                  ),
                  Switch(
                    // thumb color (round icon)
                    activeColor: Colors.white,
                    activeTrackColor: Color.fromRGBO(214, 31, 38, 1),
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Color.fromRGBO(200, 200, 200, 1),
                    splashRadius: 50.0,
                    // boolean variable value
                    value: flag,
                    // changes the state of the switch
                    onChanged: (value) => setState(() => flag = value),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12,),
            Container(
              padding: EdgeInsets.only(left: 17,right: 17,top: 19,bottom: 19),
              margin: EdgeInsets.only(left: 17,right: 17),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email Notifcations",style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(height: 16,),
                      Container(width:MediaQuery.of(context).size.width/1.8,child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumym")),
                    ],
                  ),
                  Switch(
                    // thumb color (round icon)
                    activeColor: Colors.white,
                    activeTrackColor: Color.fromRGBO(214, 31, 38, 1),
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Color.fromRGBO(200, 200, 200, 1),
                    splashRadius: 50.0,
                    // boolean variable value
                    value: flag,
                    // changes the state of the switch
                    onChanged: (value) => setState(() => flag = value),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12,),
            Container(
              padding: EdgeInsets.only(left: 17,right: 17,top: 19,bottom: 19),
              margin: EdgeInsets.only(left: 17,right: 17),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Order Notifcations",style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(height: 16,),
                      Container(width:MediaQuery.of(context).size.width/1.8,child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumym")),
                    ],
                  ),
                  Switch(
                    // thumb color (round icon)
                    activeColor: Colors.white,
                    activeTrackColor: Color.fromRGBO(214, 31, 38, 1),
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Color.fromRGBO(200, 200, 200, 1),
                    splashRadius: 50.0,
                    // boolean variable value
                    value: flag,
                    // changes the state of the switch
                    onChanged: (value) => setState(() => flag = value),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12,),
            Container(
              padding: EdgeInsets.only(left: 17,right: 17,top: 19,bottom: 19),
              margin: EdgeInsets.only(left: 17,right: 17),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("General Notifcations",style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(height: 16,),
                      Container(width:MediaQuery.of(context).size.width/1.8,child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumym")),
                    ],
                  ),
                  Switch(
                    // thumb color (round icon)
                    activeColor: Colors.white,
                    activeTrackColor: Color.fromRGBO(214, 31, 38, 1),
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Color.fromRGBO(200, 200, 200, 1),
                    splashRadius: 50.0,
                    // boolean variable value
                    value: flag,
                    // changes the state of the switch
                    onChanged: (value) => setState(() => flag = value),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12,),
            Container(
              padding: EdgeInsets.only(left: 17,right: 17,top: 19,bottom: 19),
              margin: EdgeInsets.only(left: 17,right: 17),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Allow Notifcations",style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(height: 16,),
                      Container(width:MediaQuery.of(context).size.width/1.8,child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumym")),
                    ],
                  ),
                  Switch(
                    // thumb color (round icon)
                    activeColor: Colors.white,
                    activeTrackColor: Color.fromRGBO(214, 31, 38, 1),
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Color.fromRGBO(200, 200, 200, 1),
                    splashRadius: 50.0,
                    // boolean variable value
                    value: flag,
                    // changes the state of the switch
                    onChanged: (value) => setState(() => flag = value),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12,),
            Container(
              padding: EdgeInsets.only(left: 17,right: 17,top: 19,bottom: 19),
              margin: EdgeInsets.only(left: 17,right: 17),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email Notifcations",style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(height: 16,),
                      Container(width:MediaQuery.of(context).size.width/1.8,child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumym")),
                    ],
                  ),
                  Switch(
                    // thumb color (round icon)
                    activeColor: Colors.white,
                    activeTrackColor: Color.fromRGBO(214, 31, 38, 1),
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Color.fromRGBO(200, 200, 200, 1),
                    splashRadius: 50.0,
                    // boolean variable value
                    value: flag,
                    // changes the state of the switch
                    onChanged: (value) => setState(() => flag = value),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12,),
            Container(
              padding: EdgeInsets.only(left: 17,right: 17,top: 19,bottom: 19),
              margin: EdgeInsets.only(left: 17,right: 17),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Order Notifcations",style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(height: 16,),
                      Container(width:MediaQuery.of(context).size.width/1.8,child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumym")),
                    ],
                  ),
                  Switch(
                    // thumb color (round icon)
                    activeColor: Colors.white,
                    activeTrackColor: Color.fromRGBO(214, 31, 38, 1),
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Color.fromRGBO(200, 200, 200, 1),
                    splashRadius: 50.0,
                    // boolean variable value
                    value: flag,
                    // changes the state of the switch
                    onChanged: (value) => setState(() => flag = value),
                  ),
                ],
              ),
            ),
            SizedBox(height: 12,),
            Container(
              padding: EdgeInsets.only(left: 17,right: 17,top: 19,bottom: 19),
              margin: EdgeInsets.only(left: 17,right: 17),
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("General Notifcations",style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),),
                      SizedBox(height: 16,),
                      Container(width:MediaQuery.of(context).size.width/1.8,child: Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumym")),
                    ],
                  ),
                  Switch(
                    // thumb color (round icon)
                    activeColor: Colors.white,
                    activeTrackColor: Color.fromRGBO(214, 31, 38, 1),
                    inactiveThumbColor: Colors.white,
                    inactiveTrackColor: Color.fromRGBO(200, 200, 200, 1),
                    splashRadius: 50.0,
                    // boolean variable value
                    value: flag,
                    // changes the state of the switch
                    onChanged: (value) => setState(() => flag = value),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22,),
          ],
        ),
      ),
    );
  }
}
