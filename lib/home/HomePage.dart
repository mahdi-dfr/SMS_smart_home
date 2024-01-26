import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:turkeysh_sms_smart_home/helper/app_color.dart';
import 'package:turkeysh_sms_smart_home/home/sms_controller.dart';
import 'package:turkeysh_sms_smart_home/utils/pages.dart';
import 'package:turkeysh_sms_smart_home/widgets/option_container.dart';

import '../widgets/custom_app_bar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = ScrollController();
  final _advancedDrawerController = AdvancedDrawerController();
  final smsController = Get.find<SmsController>();

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
            colors: [
              const Color(0xff02253f),
              Colors.redAccent.withOpacity(0.2)
            ],
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
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.white,
            blurRadius: 0.0,
          ),
        ],
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: SafeArea(
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
                  child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white),
                      child: Image.asset(
                        'assets/images/logo_wide2.png',
                        width: Get.width,
                      ), )
              ),
              ListTile(
                onTap: () {
                  Get.toNamed(RoutsConstName.start);
                },
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
      child: Scaffold(
        appBar: CustomAppBar(
          height: 150,
        ),
        body: SafeArea(
          child: Container(
              margin: const EdgeInsets.only(top: 24.0),
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
                                'تنظیمات روشن و خاموش شدن موتورخانه',
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
                                onClick: () {
                                  smsController.sendMessage(context, 'GN');
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
                                titleText: 'پاک کردن دفترچه تلفن',
                                widthContainer: Get.width / 2.5,
                                onClick: () {
                                  smsController.sendMessage(context, 'RN');
                                },
                              ),
                              OptionContainer(
                                titleText: 'تنظیم دما',
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
              )
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

