import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_bazaar/views/home_page.dart';
import 'package:simple_bazaar/views/login_page.dart';
import 'package:simple_bazaar/views/onboarding_page.dart';
import 'package:simple_bazaar/views/register_page.dart';
import 'package:simple_bazaar/views/splash_screen.dart';

import '../views/account_page.dart';
import '../views/explore_page.dart';
import '../views/product_detail_page.dart';


class PageRoutes{
  static const String splash_screen = '/splash';
  static const String onboarding_page = '/onboarding';
  static const String login_page = '/login';
  static const String register_page = '/register';
  static const String home_page = '/home';
  static const String explore_page = '/explore';
  static const String account_page = '/account';
  static const String product_detail_page = '/productDetail';

  static Widget getSplashScreen () => SplashScreen();
  static Widget getOnboardingPage () => OnboardingPage();
  static Widget getLoginPage () => LoginPage();
  static Widget getRegisterPage () => RegisterPage();
  static Widget getHomePage () => HomePage();
  static Widget getExplorePage () => ExplorePage();
  static Widget getAccountPage () => AccountPage();
  static Widget getProductDetailPage () => ProductDetailPage();

  static List<GetPage<dynamic>> routes=[
    GetPage(
      name: splash_screen,
      page: getSplashScreen,
    ),
    GetPage(
      name: onboarding_page,
      page: getOnboardingPage,
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 300),
    ),
    GetPage(
      name: login_page,
      page: getLoginPage,
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 200),
    ),
    GetPage(
      name: register_page,
      page: getRegisterPage,
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 200),
    ),
    GetPage(
      name: home_page,
      page: getHomePage,
      transition: Transition.rightToLeft,
      transitionDuration: Duration(milliseconds: 200),
    ),
    GetPage(
      name: explore_page,
      page: getExplorePage,
      transition: Transition.downToUp,
      transitionDuration: Duration(milliseconds: 200),
    ),
    GetPage(
      name: account_page,
      page: getAccountPage,
      transition: Transition.downToUp,
      transitionDuration: Duration(milliseconds: 200),
    ),
    GetPage(
      name: product_detail_page,
      page: getProductDetailPage,
      transition: Transition.downToUp,
      transitionDuration: Duration(milliseconds: 200),
    ),
  ];
}