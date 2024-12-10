import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodly/Widgets/button.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'start_page.dart';

class introPage extends StatefulWidget {
  const introPage({Key? key}) : super(key: key);

  @override
  State<introPage> createState() => _introPageState();
}

class _introPageState extends State<introPage> {
  final controller = PageController();
  bool isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
          systemNavigationBarIconBrightness: Brightness.light,
          systemNavigationBarColor: Theme.of(context).primaryColor,
        ),
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(bottom: 100),
            child: Container(
              child: PageView(
                onPageChanged: (index) {
                  setState(() {
                    index == 3 ? isLastPage = true : isLastPage = false;
                  });
                },
                controller: controller,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Container(
                      color: Theme.of(context).canvasColor,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: 350,
                              height: 350,
                              child: const Center(
                                child: Image(
                                    image: AssetImage('assets/onBoarding/7.jpg')),
                              )),
                          const Padding(
                            padding: EdgeInsets.only(top: 30, bottom: 10),
                            child: Text(
                              textAlign: TextAlign.center,
                              "All Your Favorites",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            child: Text(
                              textAlign: TextAlign.center,
                              "Order from the best local restaurants with easy, on-demand delivery.",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: Theme.of(context).canvasColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Container(
                              width: 300,
                              height: 300,
                              child: const Image(
                                  image:
                                      AssetImage('assets/onBoarding/4.JPG'))),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 30, bottom: 10),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Free Delivery Offers",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Free delivery for new customers with Visa and others payment methods.",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Theme.of(context).canvasColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: Container(
                              width: 300,
                              height: 300,
                              child: const Image(
                                  image:
                                  AssetImage('assets/onBoarding/5.JPG'))),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 30, bottom: 10),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Free Delivery Offers",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Free delivery for new customers with Visa and others payment methods.",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    color: Theme.of(context).canvasColor,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            width: 350,
                            height: 350,
                            child: const Image(
                                image: AssetImage('assets/onBoarding/6.JPG'))),
                        const Padding(
                          padding: EdgeInsets.only(top: 30, bottom: 10),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Choose Your Food",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 28,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 30),
                          child: Text(
                            textAlign: TextAlign.center,
                            "Easily find your type of food craving and you’ll get delivery in wide range.",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          bottomSheet: isLastPage
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: MaterialButton(
                    onPressed: (){},
                     child:Container(
                       height: 50,
                       width: double.infinity,
                       child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 20),
                           child: InkWell(

                             child: Container(
                               decoration: BoxDecoration(
                                   color: Colors.deepOrange,
                                   borderRadius: BorderRadius.circular(10.0)),
                               child: Center(
                                   child: Text(
                                   'GET START',style: const TextStyle(
                                       color: Colors.white,
                                       fontWeight: FontWeight.w600,
                                       fontSize: 15),),

                                   )),
                             ),
                           )),
                     ),
                )
              : Container(
                  color: Colors.grey.shade100,
                  height: 60,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            child: const Text(
                              "Skip",
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 16,color:Colors.deepOrange),
                            ),
                            onPressed: () => controller.jumpToPage(3),
                          ),
                          Center(
                            child: SmoothPageIndicator(
                              controller: controller,
                              count: 4,
                              effect: WormEffect(
                                  activeDotColor:
                                      Colors.deepOrange,
                                  dotHeight: 5,
                                  dotWidth: 10,
                                  spacing: 5),
                            ),
                          ),
                          TextButton(
                            child: const Text("Next",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 16,color:Colors.deepOrange )),
                            onPressed: () => controller.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut),
                          )
                        ]),
                  ),
                ),
        ));
  }
}

