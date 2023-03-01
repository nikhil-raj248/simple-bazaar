import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';
import 'package:simple_bazaar/track_order.dart';

class OrderSuccessPage extends StatefulWidget {
  const OrderSuccessPage({Key? key}) : super(key: key);

  @override
  State<OrderSuccessPage> createState() => _OrderSuccessPageState();
}

class _OrderSuccessPageState extends State<OrderSuccessPage> {
  final ConfettiController confettiController=ConfettiController();
  bool isPlay=false;

  @override
  void initState() {
    super.initState();
    confettiController.play();
  }

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
          "Order Success",
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => const TrackOrderPage()));
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red
            ),
            child: Text("Track order",style: TextStyle(color: Colors.white),),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ConfettiWidget(
              //     confettiController: confettiController,
              //   shouldLoop: true,
              //   blastDirection: -3.14/2,
              //   emissionFrequency: 0.01,
              //   numberOfParticles: 25,
              // ),
              SizedBox(
                height: 115,
                  width: 100,
                  child: Image.asset("assets/images/redbasket.png")
              ),
              SizedBox(height: 35,),
              Container(
                alignment: Alignment.center,
                  child: Text("Your order was\nsuccesfull !",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
              ),
              SizedBox(height: 15,),
              Text("You will get a response within\na few minutes.",textAlign: TextAlign.center,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Color.fromRGBO(134, 136, 137, 1)),),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    confettiController.dispose();
    super.dispose();
  }

}
