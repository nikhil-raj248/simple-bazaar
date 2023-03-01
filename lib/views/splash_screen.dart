import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../routes/Routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    // Timer(Duration(seconds: 1),(){
    //   Get.offNamed(PageRoutes.onboarding_page);
    // });
    redirectToNextPage();
  }

  redirectToNextPage() async{
    SharedPreferences prefs =await SharedPreferences.getInstance();
    var email=prefs.getString("hasUser");
    print(email);
    Timer(Duration(seconds: 2),(){
      // Get.offNamed(PageRoutes.onboarding_page);
      Get.offNamed(email!=null?PageRoutes.home_page:PageRoutes.onboarding_page);

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset("assets/images/splash.jpg",fit: BoxFit.cover,),
      ),
    );
  }
}

