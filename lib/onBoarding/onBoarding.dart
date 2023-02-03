import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class onBoarding extends StatefulWidget {
  const onBoarding({Key? key}) : super(key: key);

  @override
  State<onBoarding> createState() => _onBoardingState();
}

class _onBoardingState extends State<onBoarding> {

  final PageController _pageController = PageController(initialPage: 0);

  int whatPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: PageView(
                controller: _pageController,
                children: [
                  Container(
                    child: Column(
                      children: [
                        SizedBox(height: 60,),
                        const Text(
                          'On-demand delivery',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 15,),
                        const Text(
                          'We turn your retail pickup orders into same\n      day delivery with three simple steps',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 15,),
                        LottieBuilder.asset('assets/anim/hello.json', repeat: true),
                      ],
                    ),
                  ),
                  // LottieBuilder.asset('assets/anim/hello.json', repeat: true),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(height: 60,),
                        const Text(
                          'Buy online',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 15,),
                        const Text(
                          'Shop online at you favorite reatail stores\n                   as you normally do',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 15,),
                        LottieBuilder.asset('assets/anim/truck1.json', repeat: true),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(height: 60,),
                        const Text(
                          'Schedule with Ourly',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 15,),
                        const Text(
                          'And well bring it straight to your door\n                 in the same day',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 15,),
                        LottieBuilder.asset('assets/anim/hello.json', repeat: true),
                      ],
                    ),
                  ),
                ],
                onPageChanged: (v){
                  whatPage = v;
                  setState(() { });
                },
              ),
          ),
          Container(
            color: Color(0xFFF8BBD0).withOpacity(0.5),
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: const SlideEffect(
                  spacing: 8.0,
                  radius: 4.0,
                  dotWidth: 24.0,
                  dotHeight: 5.0,
                  strokeWidth: 0,
                  dotColor: Colors.transparent,
                  //(0xFF8E8E8)
                  activeDotColor: Colors.redAccent
              ),
            ),
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width*0.02),
            child: Column(
              children: [
                SizedBox(height: 40,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MediaQuery.of(context).size.width*0.44, 54),
                    backgroundColor: const Color(0xFF37474F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child:
                  whatPage != 2
                  ? const Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  )
                      : const Text(
                    'Get started',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                  onPressed: () {
                    whatPage != 2
                        ? _pageController.nextPage(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                    ):{};
                  },
                ),
                SizedBox(height: 20,),
                TextButton(
                    onPressed:(){
                      whatPage!= 0
                          ? _pageController.previousPage(
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeInOut,
                      ):{};
                    },
                    child: const Text(
                      'Skip',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize:17,
                              fontWeight: FontWeight.w600),
                        ),
                    ),
              ],
             ),
            ),
          const SizedBox(height: 25,),
        ],
      ),
    );
  }
}
