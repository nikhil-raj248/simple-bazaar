import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:simple_bazaar/search_page.dart';
import 'package:http/http.dart';

import '../cart_page.dart';
import '../forgot_password_page.dart';
import 'login_page.dart';

import 'package:get/get.dart' hide Response;
import '../routes/Routes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  TextEditingController firstNameController=TextEditingController();
  TextEditingController lastNameController=TextEditingController();
  TextEditingController eMailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmPasswordController=TextEditingController();
  TextEditingController mobileController=TextEditingController();

  bool ishiddenPassword=true;
  bool ishiddenConfirmPassword=true;
  bool isChecked=true;
  bool isRegistering=false;

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
              return (!isRegistering)?SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 20,right: 28),
                        width: width*0.35,
                        height: height*0.16,
                        child: Image.asset("assets/images/simplebazaartext.jpg")
                    ),
                    SizedBox(height: 5,),
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 10),
                      child: Text("Create an Account",
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 22)),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10,right: 10),

                      child: Text("Sign up now to get started with an account",
                          textAlign: TextAlign.center,style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              color: Color.fromRGBO(134, 136, 137, 1))),
                    ),
                    SizedBox(height: 26,),
                    Container(
                      margin: EdgeInsets.only(left: 20,right: 28),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 56,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  elevation: 0,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5),
                                      side: BorderSide(color: Color.fromRGBO(28, 52, 84, 0.26))
                                  )
                              ),
                              child: SizedBox(
                                height: 18,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset("assets/images/googleLogo.png",),
                                    SizedBox(width: 20),
                                    Text("Sign up with Google")
                                  ],
                                ),
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

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(alignment:Alignment.centerLeft,child: Text("First Name",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12,color: Color.fromRGBO(27, 43, 65, 0.72)))),
                                  SizedBox(height: 5,),
                                  SizedBox(
                                    height: 55,
                                    width: width*0.4,
                                    child: TextField(
                                      controller: firstNameController,
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
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(alignment:Alignment.centerLeft,child: Text("Last Name",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12,color: Color.fromRGBO(27, 43, 65, 0.72)))),
                                  SizedBox(height: 5,),
                                  SizedBox(
                                    height: 55,
                                    width: width*0.4,
                                    child: TextField(
                                      controller: lastNameController,
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
                                  ),
                                ],
                              ),
                            ],
                          ),




                          SizedBox(height: 16,),
                          Container(alignment:Alignment.centerLeft,child: Text("Mobile Number",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12,color: Color.fromRGBO(27, 43, 65, 0.72)))),
                          SizedBox(height: 5,),
                          Container(
                            height: 55,
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              controller: mobileController,
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
                          ),
                          SizedBox(height: 16,),
                          Container(alignment:Alignment.centerLeft,child: Text("Email Address",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12,color: Color.fromRGBO(27, 43, 65, 0.72)))),
                          SizedBox(height: 5,),
                          Container(
                            height: 55,
                            child: TextField(
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
                          ),
                          SizedBox(height: 16,),
                          Container(alignment:Alignment.centerLeft, child: Text("Password",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12,color: Color.fromRGBO(27, 43, 65, 0.72)))),
                          SizedBox(height: 5,),
                          Container(
                            height: 55,
                            child: TextField(
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
                          ),
                          SizedBox(height: 16,),
                          Container(alignment:Alignment.centerLeft,child: Text("Confirm Password",style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12,color: Color.fromRGBO(27, 43, 65, 0.72)))),
                          SizedBox(height: 5,),
                          SizedBox(
                            height: 55,
                            child: TextField(
                              obscureText: ishiddenConfirmPassword,
                              enableSuggestions: false,
                              autocorrect: false,
                              controller: confirmPasswordController,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color.fromRGBO(28, 55, 90, 0.16))
                                ),
                                focusedBorder:OutlineInputBorder(
                                  borderSide: const BorderSide(color: Color.fromRGBO(214, 31, 38, 1)),
                                  //borderRadius: BorderRadius.circular(25.0),
                                ),
                                suffixIcon: IconButton(icon:Icon(Icons.remove_red_eye),color: ishiddenConfirmPassword?Colors.grey:Colors.red,onPressed: (){
                                  ishiddenConfirmPassword=!ishiddenConfirmPassword;
                                  setState(() {});
                                },),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 2.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(
                              activeColor: Color.fromRGBO(22, 118, 243, 1),
                              value: isChecked,
                              onChanged: (bool? value) {
                                setState(() {
                                  isChecked = value!;
                                });
                              }),
                          Text("I have read and agree to the ",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12,color: Color.fromRGBO(27, 43, 65, 0.72))),
                          Text("Terms of Service",style: TextStyle(decoration:TextDecoration.underline,fontWeight: FontWeight.w600, fontSize: 12,color: Color.fromRGBO(214, 31, 38, 1))),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: width*0.95,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          onRegisterClick(context);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(214, 31, 38, 1),
                          elevation: 0,
                        ),
                        child: Text("Register Now",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15,color: Colors.white)),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account? ",style: TextStyle(fontWeight: FontWeight.w400, fontSize: 13,color: Colors.black)),
                        GestureDetector(
                            onTap: (){
                              //Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: LoginPage()));
                              Get.offNamed(PageRoutes.login_page);
                            },
                            child: Text("Log in",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 13,color: Color.fromRGBO(214, 31, 38, 1))))
                      ],
                    ),
                    SizedBox(height: 40,),
                  ],
                ),
              ):Center(child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircularProgressIndicator(color: Color.fromRGBO(214, 31, 38, 1),),
                  SizedBox(height: 30,),
                  Text("Registering in progress",style: TextStyle(fontSize:15,fontWeight: FontWeight.w500,color: Color.fromRGBO(214, 31, 38, 1),),),
                ],
              )
              );
            },
          )
        )
    );
  }

  onRegisterClick(BuildContext context)async{
    //var name=fullNameController.text.toString();
    var email=eMailController.text.toString();
    var password=passwordController.text.toString();
    var confirmPassword=confirmPasswordController.text.toString();
    var mobileNo=mobileController.text.toString();
    // final splitted = name.split(' ');
    // var fName=splitted[0];
    // var lName="";
    // if(splitted.length>1)lName=splitted[1];
    var fName=firstNameController.text.toString();
    var lName=lastNameController.text.toString();

    print("22222222222222");
    if(fName.isNotEmpty && lName.isNotEmpty && email.isNotEmpty && password.isNotEmpty && confirmPassword.isNotEmpty && mobileNo.isNotEmpty){


      if(password==confirmPassword){

        try{
          setState(() {
            isRegistering=true;
          });
          Response response=await post(
              Uri.parse("https://simple.zapbase.com/public/api/v1/auth/create_account"),
              body: {
                "email":email,
                "first_name":fName,
                "last_name":lName,
                "mobile":mobileNo,
                "country_code":"91",
                "password":password,
                "cover":"assets/images/apple.png",
              }
          );

          setState(() {
            isRegistering=false;
          });

          if(response.statusCode==200){
            var body=jsonDecode(response.body.toString());
            print("SUCCESS");
            //showErrorDialog("SUCCESSFULLY REGISTERED",false);
             SharedPreferences pref =await SharedPreferences.getInstance();
            // pref.setString("email", email);

             String encodedMap = json.encode(body["user"]);
            //print(encodedMap);

             pref.setString('hasUser', encodedMap);


            Get.offAllNamed(PageRoutes.home_page);
            //print(body);
          }
          else{
            var body=jsonDecode(response.body.toString());
            print("FAILED TO REGISTER");
            //print(body);
            showErrorDialog(body["message"],true);
            //print(body);
          }

        }
        catch(e){
          print(e.toString());
        }


      }
      else{
        showErrorDialog("PASSWORD NOT SAME",true);
      }


    }
    else{
      showErrorDialog("ENTER ALL DETAILS",true);

    }

  }

  showErrorDialog(var errorMessage,var flag){
    final snackBar = SnackBar(
      content:Text(errorMessage),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    if(!flag){
      Get.offNamed(PageRoutes.login_page);
    }
    // showDialog(
    //   context: context,
    //   builder: (BuildContext context) {
    //     return AlertDialog(
    //       content: Text(errorMessage),
    //       actions: [
    //         TextButton(
    //           child: flag?Text("TRY AGAIN"):Text("GO TO LOGIN"),
    //           onPressed:  () {
    //             if(flag) Get.back();
    //             else{
    //               //Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: LoginPage()));
    //               Get.offNamed(PageRoutes.login_page);
    //             }
    //           },
    //         ),
    //       ],
    //     );
    //   },
    // );
  }
}
