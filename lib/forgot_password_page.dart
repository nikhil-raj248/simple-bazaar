import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import 'otp_page.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
          leading: const BackButton(
            color: Colors.red,
          ),
          title: const Text(
            "Password Recovery",
            style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w500),
          ),
          backgroundColor: Colors.white,
      elevation: 0,),
      body: Container(
        margin: EdgeInsets.only(left: 17,right: 17),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 80,),
            Text("Forgot Password",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22)),
            SizedBox(height: 13,),
            Text("Lorem ipsum dolor sit amet, consetetursadipscing elitr, sed diam nonumy",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.grey)),
            SizedBox(height: 44,),
            SizedBox(
              height: 55,
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.mail_outline),
                  hintText: "Email Address",
                ),
              ),
            ),
            SizedBox(height: 13,),
            Container(
              width: 360,
              height: 60,
              child: ElevatedButton(
                onPressed: () {Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: OtpPage()));},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  elevation: 0,

                ),
                child: Text("Send Link",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15,color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
