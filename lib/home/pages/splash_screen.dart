// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:turkeysh_sms_smart_home/start_page/start_page.dart';
//
// import '../../helper/app_color.dart';
// import '../../utils/constant.dart';
// import '../../utils/pages.dart';
//
// class SplashScreen extends StatefulWidget {
//   SplashScreen({super.key});
//
//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }
//
// class _SplashScreenState extends State<SplashScreen> {
//   final bool _isUserLogin = GetStorage().read(MOBILE_NUMBER) != null &&
//       GetStorage().read(PASSWORD) != null;
//
//   @override
//   initState() {
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
//     Future.delayed(const Duration(seconds: 2)).then((value) {
//       if (_isUserLogin) {
//         Get.offAllNamed(RoutsConstName.home);
//       } else {
//         Navigator.pushReplacement(context,
//             MaterialPageRoute(builder: (BuildContext context) {
//           return StartPage();
//         }));
//       }
//     });
//
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       body: SizedBox(
//         width: MediaQuery.sizeOf(context).width,
//         height: MediaQuery.sizeOf(context).height,
//         child: Center(
//           child: Stack(
//             children: [
//               Column(
//                 children: [
//                   Padding(
//                       padding: const EdgeInsets.only(top: 20),
//                       child: Container(
//                         width: MediaQuery.sizeOf(context).width,
//                         padding: const EdgeInsets.all(12),
//                         margin: const EdgeInsets.all(20),
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(15),
//                             border: Border.all(width: 0.5, color: AppColor.backgroundColor)
//                         ),
//                         child: Image.asset(
//                           'assets/images/splash_img.jpg',
//                           fit: BoxFit.fill,
//                         ),
//                       )
//                   ),
//                   const Text(
//                     'شرکت ابزار صنعت موج ساز',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,),
//                   ),
//                 ],
//               ),
//               const Padding(
//                 padding: EdgeInsets.only(bottom: 50),
//                 child: Align(
//                     alignment: Alignment.bottomCenter,
//                     child: CircularProgressIndicator()),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
//     super.dispose();
//   }
// }
