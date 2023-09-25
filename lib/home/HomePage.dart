import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_collapsing_toolbar/flutter_collapsing_toolbar.dart';
import 'package:get/get.dart';
import 'package:turkeysh_sms_smart_home/utils/constant.dart';
import 'package:turkeysh_sms_smart_home/utils/pages.dart';
import 'package:turkeysh_sms_smart_home/widgets/custom_appbar.dart';
import 'package:turkeysh_sms_smart_home/widgets/option_container.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = ScrollController();
  final _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.red, Colors.redAccent.withOpacity(0.2)],
          ),
        ),
      ),
      controller: _advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        // NOTICE: Uncomment if you want to add shadow behind the page.
        // Keep in mind that it may cause animation jerks.
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.white,
            blurRadius: 0.0,
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      drawer: SafeArea(
        child: Container(
          child: ListTileTheme(
            textColor: Colors.white,
            iconColor: Colors.white,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  width: 128.0,
                  height: 128.0,
                  margin: const EdgeInsets.only(
                    top: 24.0,
                    bottom: 64.0,
                  ),
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    color: Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/turkeysh_full_back.png',
                    width: Get.width,
                  ),
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.settings, color: Colors.black),
                  title: const Text(
                    'تغییر شماره سیمکارت و رمز کاربری',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(
                    Icons.perm_device_info_rounded,
                    color: Colors.black,
                  ),
                  title: const Text('راهنما',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                ),
                const SizedBox(
                  height: 12,
                ),
                ListTile(
                  onTap: () {},
                  leading: const Icon(Icons.info_outline_rounded,
                      color: Colors.black),
                  title: const Text('درباره ما',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black)),
                ),
              ],
            ),
          ),
        ),
      ),
      child: Scaffold(
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(top: 24.0),
            child: Column(
              children: [
                 Align(
                  alignment: Alignment.topCenter,
                  child: //Container(),
                      CustomAppbar(isOptionsShow: true, onPressed: (){
                        _handleMenuButtonPressed();
                      },),
                ),
                Expanded(
                    child: SingleChildScrollView(
                  controller: controller,
                  child: Center(
                    child: SingleChildScrollView(
                      physics: const ScrollPhysics(),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 8, 20, 12),
                        child: Column(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            OptionContainer(
                              titleText: 'تنظیمات عمومی',
                              widthContainer: Get.width / 2,
                              onClick: () {
                                Get.toNamed(RoutsConstName.regular);
                              },
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                OptionContainer(
                                  titleText: 'تنظیمات برد رله',
                                  widthContainer: Get.width / 2.5,
                                  onClick: () {
                                    Get.toNamed(RoutsConstName.board);
                                  },
                                ),
                                OptionContainer(
                                  titleText: 'گزارش گیری از سیستم',
                                  widthContainer: Get.width / 2.5,
                                  onClick: () {
                                    Get.toNamed(RoutsConstName.report);
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                OptionContainer(
                                  titleText:
                                      'تنظیمات روشن و خاموش شدن خروجی ها',
                                  widthContainer: Get.width / 2.5,
                                  onClick: () {
                                    Get.toNamed(RoutsConstName.exportOn);
                                  },
                                  textSize: 14,
                                ),
                                OptionContainer(
                                  titleText: 'تنظیمات ساعت دستگاه',
                                  widthContainer: Get.width / 2.5,
                                  onClick: () {
                                    Get.toNamed(RoutsConstName.time);
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                OptionContainer(
                                  titleText: 'وارد کردن دفترچه تلفن',
                                  widthContainer: Get.width / 2.5,
                                  onClick: () {
                                    Get.toNamed(RoutsConstName.phone);
                                  },
                                ),
                                OptionContainer(
                                  titleText: 'نمایش دفترچه تلفن',
                                  widthContainer: Get.width / 2.5,
                                  onClick: () {},
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                OptionContainer(
                                  titleText: 'پاک کردن دفترچه تلفن',
                                  widthContainer: Get.width / 2.5,
                                  onClick: () {},
                                ),
                                OptionContainer(
                                  titleText: 'تنظیمات مد کاری',
                                  widthContainer: Get.width / 2.5,
                                  onClick: () {
                                    Get.toNamed(RoutsConstName.mod);
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _handleMenuButtonPressed() {
    // NOTICE: Manage Advanced Drawer state through the Controller.
    // _advancedDrawerController.value = AdvancedDrawerValue.visible();
    _advancedDrawerController.showDrawer();
  }
}

//     return Scaffold(
//
//         backgroundColor: Colors.black,
//         body: SafeArea(
//           child: Container(
//             margin: const EdgeInsets.only(top: 24.0),
//             child: Column(
//               children: [
//                  const Align(
//                   alignment: Alignment.topCenter,
//                   child: //Container(),
//                   CustomAppbar(),
//                 ),
//                 Expanded(
//                     child: SingleChildScrollView(
//                   controller: controller,
//                   child: Center(
//                     child: SingleChildScrollView(
//                       physics: const ScrollPhysics(),
//                       child: Padding(
//                         padding: const EdgeInsets.fromLTRB(20, 8, 20, 12),
//                         child: Column(
//                           // ignore: prefer_const_literals_to_create_immutables
//                           children: [
//                             const SizedBox(
//                               height: 30,
//                             ),
//                             OptionContainer(
//                               titleText: 'تنظیمات عمومی',
//                               widthContainer: Get.width / 2,
//                             ),
//                             const SizedBox(
//                               height: 30,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 OptionContainer(
//                                   titleText: 'تنظیمات برد رله',
//                                   widthContainer: Get.width / 2.5,
//                                 ),
//                                 OptionContainer(
//                                   titleText: 'گزارش گیری از سیستم',
//                                   widthContainer: Get.width / 2.5,
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(
//                               height: 30,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 OptionContainer(
//                                   titleText:
//                                       'تنظیمات روشن و خاموش شدن خروجی ها',
//                                   widthContainer: Get.width / 2.5,
//                                   textSize: 14,
//                                 ),
//                                 OptionContainer(
//                                   titleText: 'تنظیمات ساعت دستگاه',
//                                   widthContainer: Get.width / 2.5,
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(
//                               height: 30,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 OptionContainer(
//                                   titleText: 'وارد کردن دفترچه تلفن',
//                                   widthContainer: Get.width / 2.5,
//                                 ),
//                                 OptionContainer(
//                                   titleText: 'نمایش دفترچه تلفن',
//                                   widthContainer: Get.width / 2.5,
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(
//                               height: 30,
//                             ),
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 OptionContainer(
//                                   titleText: 'پاک کردن دفترچه تلفن',
//                                   widthContainer: Get.width / 2.5,
//                                 ),
//                                 OptionContainer(
//                                   titleText: 'تنظیمات مد کاری',
//                                   widthContainer: Get.width / 2.5,
//                                 ),
//                               ],
//                             ),
//                             const SizedBox(
//                               height: 30,
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ))
//               ],
//             ),
//           ),
//         ));
//   }
// }
