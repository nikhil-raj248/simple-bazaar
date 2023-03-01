import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:simple_bazaar/shipping_method_page.dart';

class TrackOrder2Page extends StatefulWidget {
  const TrackOrder2Page({Key? key}) : super(key: key);

  @override
  State<TrackOrder2Page> createState() => _TrackOrder2PageState();
}

class _TrackOrder2PageState extends State<TrackOrder2Page> {

  var mapHeightMultiplier=0.45;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        leading: const BackButton(
          color: Colors.red,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: Color.fromRGBO(234, 234, 234, 1),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*(1-mapHeightMultiplier+0.11),
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(37, -122),
                  //zoom:14.5
              ),
            ),
            //color: Colors.yellow,
          ),
          buildScrollableSheet()
        ],
      ),
    );
  }

  Widget buildScrollableSheet(){
    return NotificationListener<DraggableScrollableNotification>(
      onNotification: (notification) {
        setState(() {
          mapHeightMultiplier=notification.extent;
          print(notification.extent);
        });
        return true;
      },
      child: DraggableScrollableSheet(
        initialChildSize: 0.45,
        minChildSize: 0.34,
        maxChildSize: 0.6,
        builder:
            (BuildContext context, ScrollController myScrollController) {
          return ListView.builder(
            controller: myScrollController,
            itemCount: 1,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(left: 25,right: 25),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(42),
                    topRight: Radius.circular(42),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 12,
                    ),
                    Center(
                      child: Container(
                        height: 5,
                        width: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("On the way",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: Colors.black)),
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            border: Border.all(color: Color.fromRGBO(151, 152, 153, 1))
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.access_time_filled,color: Color.fromRGBO(214, 31, 38, 1),),
                              Text("10 Min",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black))
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 22,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("Order placed",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(214, 31, 38, 1))),
                            SizedBox(height: 9,),
                            Container(
                              height: 3,
                              width: MediaQuery.of(context).size.width/4,
                              color: Color.fromRGBO(214, 31, 38, 1),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text("On the way",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(214, 31, 38, 1))),
                            SizedBox(height: 9,),
                            Container(
                              height: 3,
                              width: MediaQuery.of(context).size.width/4,
                              color: Color.fromRGBO(214, 31, 38, 1),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text("Delivered",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(151, 152, 153, 1))),
                            SizedBox(height: 9,),
                            Container(
                              height: 3,
                              width: MediaQuery.of(context).size.width/4,
                              color: Color.fromRGBO(224, 224, 224, 1),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 34,),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color.fromRGBO(243, 245, 247, 1),
                        radius: 20,
                        child: ClipRRect(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(Icons.person,color: Color.fromRGBO(214, 31, 38, 1),),
                          ),
                        ),
                      ),
                      title: Text("Your delivery hero",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(151, 152, 153, 1))),
                      subtitle: Text("Arun Srivastava",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(6, 22, 28, 1))),
                      trailing: GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ShippingMethodPage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              backgroundColor: Color.fromRGBO(243, 245, 247, 1),
                              radius: 23,
                              child: ClipRRect(
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(Icons.message,color: Color.fromRGBO(214, 31, 38, 1),),
                                ),
                              ),
                            ),
                            SizedBox(width: 17,),
                            CircleAvatar(
                              backgroundColor: Color.fromRGBO(243, 245, 247, 1),
                              radius: 23,
                              child: ClipRRect(
                                child: Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Icon(Icons.call,color: Color.fromRGBO(214, 31, 38, 1),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: ClipRRect(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(Icons.circle_outlined,color: Color.fromRGBO(214, 31, 38, 1),),
                          ),
                        ),
                      ),
                      title: Text("Store",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(151, 152, 153, 1))),
                      subtitle: Text("Galaxy Grocery Store",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(6, 22, 28, 1))),
                    ),
                    Divider(),
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 20,
                        child: ClipRRect(
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(Icons.location_on_sharp,color: Color.fromRGBO(214, 31, 38, 1),),
                          ),
                        ),
                      ),
                      title: Text("Your place",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(151, 152, 153, 1))),
                      subtitle: Text("BTM Layout, Bangalore",
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(6, 22, 28, 1))),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
