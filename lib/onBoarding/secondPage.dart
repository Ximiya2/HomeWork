// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
//
// class SecondPage extends StatefulWidget {
//   const SecondPage({Key? key}) : super(key: key);
//
//   @override
//   State<SecondPage> createState() => _SecondPageState();
// }
//
// class _SecondPageState extends State<SecondPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           SizedBox(height: 60,),
//           const Text(
//             'Buy online',
//             style: TextStyle(
//               fontSize: 20,
//               fontWeight: FontWeight.w600,
//             ),
//           ),
//           const SizedBox(height: 15,),
//           const Text(
//             'Shop online at you favorite reatail stores\n as you normally do',
//             style: TextStyle(
//               fontSize: 12,
//             ),
//           ),
//           const SizedBox(height: 15,),
//           Expanded(
//             child: PageView(
//               controller: _pageController,
//               children: [
//                 LottieBuilder.asset('assets/anim/truck1.json', repeat: true),
//               ],
//               onPageChanged: (v){
//                 whatPage = v;
//               },
//             ),
//           ),
//           SmoothPageIndicator(
//             controller: _pageController,
//             count: 3,
//             effect: const SlideEffect(
//                 spacing: 8.0,
//                 radius: 4.0,
//                 dotWidth: 24.0,
//                 dotHeight: 5.0,
//                 strokeWidth: 0,
//                 dotColor: Color(0xFFFFCDD2),
//                 //(0xFF8E8E8)
//                 activeDotColor: Colors.redAccent
//             ),
//           ),
//           const SizedBox(height: 30,),
//           Padding(
//             padding: EdgeInsets.symmetric(
//                 horizontal: MediaQuery.of(context).size.width*0.02),
//             child: Column(
//               children: [
//                 ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     fixedSize: Size(MediaQuery.of(context).size.width*0.44, 54),
//                     backgroundColor: const Color(0xFF37474F),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(15),
//                     ),
//                   ),
//                   child: const Text(
//                     'Next',
//                     style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 17,
//                         fontWeight: FontWeight.w600),
//                   ),
//                   onPressed: () {
//                     whatPage != 2
//                         ? _pageController.nextPage(
//                       duration: const Duration(milliseconds: 500),
//                       curve: Curves.easeInOut,
//                     ):{};
//                   },
//                 ),
//                 TextButton(
//                   onPressed:(){
//                     whatPage!= 0
//                         ? _pageController.previousPage(
//                       duration: const Duration(milliseconds: 500),
//                       curve: Curves.easeInOut,
//                     ):{};
//                   },
//                   child: const Text(
//                     'Skip',
//                     style: TextStyle(
//                         color: Colors.black,
//                         fontSize:17,
//                         fontWeight: FontWeight.w600),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 25,),
//         ],
//       ),
//     );
//   }
// }
