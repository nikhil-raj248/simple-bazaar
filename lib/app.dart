import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_bazaar/routes/Routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "simpleBazaar",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        initialRoute: PageRoutes.splash_screen,
        getPages: PageRoutes.routes
    );
  }
}