import 'dart:convert';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:http/http.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_bazaar/views/register_page.dart';
import 'package:simple_bazaar/track_order_2_page.dart';

import '../routes/Routes.dart';
import '../cart_page.dart';
import '../faq_page.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  TextEditingController eMailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  bool isChecked=true;
  bool ishiddenPassword=true;
  bool isLoggingIn = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var width=size.width;
    var height=size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: LayoutBuilder(
            builder: (ctx,constraint){
              var width=constraint.maxWidth;
              var height=constraint.maxHeight;
              return (!isLoggingIn)?SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 20,right: 28),
                        width: width*0.35,
                        height: height*0.16,
                        child: Image.asset("assets/images/simplebazaartext.jpg")
                    ),
                    SizedBox(height: 2,),
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 10),
                      child: Text("Log in to your Account",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 10),
                      child: Text("Welcome back, please enter your details.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color.fromRGBO(134, 136, 137, 1))),
                    ),
                    SizedBox(height: 26,),
                    Container(
                      margin: EdgeInsets.only(left: 20,right: 28),
                      child: Column(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    side: BorderSide(color: Color.fromRGBO(28, 52, 84, 0.26))
                                )
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset("assets/images/googleLogo.png",height: 18,),
                                  SizedBox(width: 15),
                                  Flexible(
                                    child: Text("Continue with Google",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Color.fromRGBO(27, 43, 65, 0.72),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16
                                    ),),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 16,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: width*0.3,
                                height: 1,
                                child: Container(
                                  color: Color.fromRGBO(28, 52, 84, 0.26),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0,right: 20),
                                child: Text("OR",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14,color: Color.fromRGBO(28, 52, 84, 0.26))),
                              ),
                              SizedBox(
                                width: width*0.3,
                                height: 1,
                                child: Container(
                                  color: Color.fromRGBO(28, 52, 84, 0.26),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 16,),
                          Container(
                              alignment:Alignment.centerLeft,
                              child: Text("Email Address",style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                  color: Color.fromRGBO(27, 43, 65, 0.72)))),
                          SizedBox(height: 5,),
                          TextField(
                            controller: eMailController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Color.fromRGBO(28, 55, 90, 0.16))
                              ),
                              focusedBorder:OutlineInputBorder(
                                borderSide: const BorderSide(color: Color.fromRGBO(214, 31, 38, 1)),
                                //borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 16,),
                          Container(alignment:Alignment.centerLeft,child: Text("Password",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12,color: Color.fromRGBO(27, 43, 65, 0.72)))),
                          SizedBox(height: 5,),
                          TextField(
                            obscureText: ishiddenPassword,
                            enableSuggestions: false,
                            autocorrect: false,
                            controller: passwordController,
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Color.fromRGBO(28, 55, 90, 0.16))
                              ),
                              focusedBorder:OutlineInputBorder(
                                borderSide: const BorderSide(color: Color.fromRGBO(214, 31, 38, 1)),
                                //borderRadius: BorderRadius.circular(25.0),
                              ),
                              suffixIcon: IconButton(icon:Icon(Icons.remove_red_eye),color: ishiddenPassword?Colors.grey:Colors.red,onPressed: (){
                                ishiddenPassword=!ishiddenPassword;
                                setState(() {});
                              },),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16,),
                    Padding(
                      padding: const EdgeInsets.only(left: 7.0,right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: Color.fromRGBO(22, 118, 243, 1),
                                  value: isChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      isChecked = value!;
                                    });
                                  }),
                              Text("Remember me",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13,color: Color.fromRGBO(27, 43, 65, 0.72))),

                            ],
                          ),
                          Text("Forgot Password?",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13,color: Color.fromRGBO(51, 51, 51, 1))),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      width: width*0.95,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          onButtonClicked();
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(214, 31, 38, 1),
                          elevation: 0,

                        ),
                        child: Text("Log In",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15,color: Colors.white)),
                      ),
                    ),
                    SizedBox(height: 22,),
                    RichText(
                        text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                                text: "Don't have an account? ", style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13,color: Colors.black)),
                            TextSpan(
                                text: "Sign Up",
                                recognizer: new TapGestureRecognizer()..onTap = () {
                                  Get.toNamed(PageRoutes.register_page)?.then((value){
                                    FocusManager.instance.primaryFocus?.unfocus();
                                  });
                                },
                                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13,color: Color.fromRGBO(214, 31, 38, 1))),
                          ],
                        )
                    ),
                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: [
                    //     Text("Don't have an account? ",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 13,color: Colors.black)),
                    //     GestureDetector(
                    //         onTap: (){
                    //           Get.toNamed(PageRoutes.register_page)?.then((value){
                    //             FocusManager.instance.primaryFocus?.unfocus();
                    //           });
                    //
                    //           //Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: RegisterPage()));
                    //         },
                    //         child: Text("Sign Up",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13,color: Color.fromRGBO(214, 31, 38, 1))))
                    //   ],
                    // ),
                    SizedBox(height: 20,),
                  ],
                ),
              ):Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(color: Color.fromRGBO(214, 31, 38, 1),),
                    SizedBox(height: 30,),
                    Text("Logging in progress",style: TextStyle(fontSize:15,fontWeight: FontWeight.w500,color: Color.fromRGBO(214, 31, 38, 1),),),
                  ],
                ),
              );
            },
          )
        ));
  }

  onButtonClicked()async{

    var email=eMailController.text.toString();
    var password=passwordController.text.toString();

    if(email.isNotEmpty && password.isNotEmpty){
      try{
        setState(() {
          isLoggingIn=true;
        });
        Response response=await post(
            Uri.parse("https://simple.zapbase.com/public/api/v1/auth/login"),
            body: {
              "email":email,
              "password":password,
            }
        );
        setState(() {
          isLoggingIn=false;
        });
        if(response.statusCode==200){
          var body=jsonDecode(response.body.toString());
          print("SUCCESS");
          //print(body["user"].runtimeType);
          //showErrorDialog("SUCCESSFULLY LOGGED IN",false);
          SharedPreferences pref =await SharedPreferences.getInstance();
          //pref.setString("email", email);


           String encodedMap = json.encode(body["user"]);
          //print(encodedMap);

           pref.setString('hasUser', encodedMap);


          Get.offAllNamed(PageRoutes.home_page);
          //print(body);
        }
        else{
          var body=jsonDecode(response.body.toString());
          print("FAILED TO LOGIN");
          showErrorDialog(body["error"].toString(),true);
          //print(body["message"]);
        }
      }
      catch(e){
        print(e.toString());
      }
    }
    else{
      showErrorDialog("Please enter all details",true);
    }
  }

  showErrorDialog(var errorMessage,var flag){
    final snackBar = SnackBar(
      content:Text(errorMessage),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    // showDialog(
    //   context: context,
    //   builder: (BuildContext context) {
    //     return AlertDialog(
    //       content: Text(errorMessage),
    //       actions: [
    //         TextButton(
    //           child: flag?Text("TRY AGAIN"):Text("GO TO HOME"),
    //           onPressed:  () {
    //             if(flag) Get.back();
    //             else{
    //               //Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: HomePage()));
    //               Get.offNamed(PageRoutes.home_page);
    //             }
    //           },
    //         ),
    //       ],
    //     );
    //   },
    // );
  }
}
