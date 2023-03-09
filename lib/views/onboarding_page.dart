import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../routes/Routes.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  List imageList = [
    {
      "id": 1,
      "image_path": 'assets/images/onboarding1.jpg',
      "title": "Buy Grocery",
      "subtitle":
          "Lorem ipsum dolor sit amet, consetetursadipscing elitr, sed diam nonumy"
    },
    {
      "id": 2,
      "image_path": 'assets/images/onboarding2.jpg',
      "title": "Fast Delivery",
      "subtitle":
          "Lorem ipsum dolor sit amet, consetetursadipscing elitr, sed diam nonumy"
    },
    {
      "id": 3,
      "image_path": 'assets/images/onboarding3.jpg',
      "title": "Enjoy Quality Food",
      "subtitle":
          "Lorem ipsum dolor sit amet, consetetursadipscing elitr, sed diam nonumy"
    }
  ];
  final CarouselController carouselController = CarouselController();
  int curridx = 0;

  @override
  void initState() {
    super.initState();
    curridx = 0;
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
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  //color: Colors.yellow,
                  // width: size.width,
                  // height: size.width*2,
                  child: CarouselSlider(
                    items: imageList.map((item) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: Image.asset(item['image_path']),
                            height: height*0.4,
                            width: width*0.9,
                          ),
                          SizedBox(height: height*0.08,),
                          Container(
                            child: Text(
                              item['title'],
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 25,color: Color.fromRGBO(26, 26, 26, 1)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SizedBox(height: height*0.01,),
                          Container(
                            child: Text(item['subtitle'],
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15,
                                    color: Color.fromRGBO(134, 136, 137, 1))),
                            width: width*0.8,
                          ),
                        ],
                      );
                    }).toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      height: height * 0.75,
                      scrollPhysics: const BouncingScrollPhysics(),
                      //autoPlay: true,
                      //aspectRatio: 2,
                      enableInfiniteScroll:false,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        curridx=index;
                        // if (curridx == 3) {
                        //   NavigateToLogin();
                        // }
                        // curridx = curridx%3;
                        setState(() {
                        });
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        child: Text("Skip",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Color.fromRGBO(196, 196, 196, 1))),
                        onTap: NavigateToLogin,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.circle_rounded,
                            size: 10,
                            color: curridx == 0 ? Color.fromRGBO(214, 31, 38, 1) : Color.fromRGBO(220, 220, 220, 1),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.circle_rounded,
                            size: 10,
                            color: curridx == 1 ? Color.fromRGBO(214, 31, 38, 1) : Color.fromRGBO(220, 220, 220, 1),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.circle_rounded,
                            size: 10,
                            color: curridx == 2 ? Color.fromRGBO(214, 31, 38, 1) : Color.fromRGBO(220, 220, 220, 1),
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: onNextClicked,
                        child: Text("Next",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 15,
                                color: Color.fromRGBO(214, 31, 38, 1))),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  void onNextClicked() {
    carouselController.nextPage();
    curridx++;
    if (curridx == 3) {
      NavigateToLogin();
    }
    if (curridx < 3) {
      setState(() {});
    }
  }

  void NavigateToLogin() {
    //Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: LoginPage()));
    Get.offNamed(PageRoutes.login_page);
    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginPage()),);
  }
}
