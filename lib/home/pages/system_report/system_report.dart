import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkeysh_sms_smart_home/widgets/custom_appbar.dart';
import 'package:turkeysh_sms_smart_home/widgets/custom_button.dart';
import 'package:turkeysh_sms_smart_home/widgets/drop_down_custom.dart';

class SystemEReport extends StatelessWidget {
  SystemEReport({Key? key}) : super(key: key);

  final controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                margin: const EdgeInsets.only(top: 24.0),
                child: Column(children: [
                   Align(
                    alignment: Alignment.topCenter,
                    child: //Container(),
                        CustomAppbar(),
                  ),
                  Expanded(
                      child: SingleChildScrollView(
                          controller: controller, child: Center(
                        child: Column(
                          children: [
                            Container(
                              width: Get.width,
                              margin: const EdgeInsets.only(
                                  left: 20, right: 20),
                              child: DropBox(
                                dropList: const [
                                  'گزارش خروجی 1',
                                  'گزارش خروجی 2',
                                  'گزارش خروجی 3',
                                  'گزارش خروجی 4',
                                  'گزارش خروجی ها',
                                  'گزارش سنسورها',
                                  'گزارش برد های رله',

                                ],
                                title: 'گزارش گیری از سیستم',
                                onPressed: (value) {},
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),

                            const CustomButton(buttonText: 'ارسال', buttonIcon: Icon(Icons.done_outline_rounded)),
                          ],
                        ),
                      ))),


                ]))));
  }
}
