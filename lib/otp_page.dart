import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:page_transition/page_transition.dart';

import 'views/home_page.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
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
          "Verify Number",
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
            Text("Verify your number",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22)),
            SizedBox(height: 13,),
            Text("Enter your OTP code below",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: Colors.grey)),
            SizedBox(height: 67,),
            OtpTextField(
              numberOfFields: 6,
              borderColor: Color(0xFF512DA8),
              //set to true to show as box or false to show as dash
              showFieldAsBox: true,

              //runs when a code is typed in
              onCodeChanged: (String code) {
                //handle validation or checks here
              },
              //runs when every textfield is filled
              onSubmit: (String verificationCode){
                showDialog(
                    context: context,
                    builder: (context){
                      return AlertDialog(
                        title: Text("Verification Code"),
                        content: Text('Code entered is $verificationCode'),
                      );
                    }
                );
              }, // end onSubmit
            ),
            SizedBox(height: 13,),
            Container(
              width: 360,
              height: 60,
              child: ElevatedButton(
                onPressed: (){Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: HomePage()));},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  elevation: 0,

                ),
                child: Text("Next",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15,color: Colors.white)),
              ),
            ),
            SizedBox(height: 20,),
            Text("Did’nt receive the code ?",
                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 15,color: Colors.grey)),
            SizedBox(height: 5,),
            Text("Resend a new code",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15)),
          ],
        ),
      ),
    );
  }
}
