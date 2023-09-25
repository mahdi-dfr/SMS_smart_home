import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkeysh_sms_smart_home/widgets/check_box_custom.dart';
import 'package:turkeysh_sms_smart_home/widgets/custom_appbar.dart';
import 'package:turkeysh_sms_smart_home/widgets/custom_button.dart';
import 'package:turkeysh_sms_smart_home/widgets/drop_down_custom.dart';

class ModSetting extends StatelessWidget {
  ModSetting({Key? key}) : super(key: key);

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
                          controller: controller,
                          child: Center(
                            child: Column(children: [
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                'تنظیمات مد کاری',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                                
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                  width: Get.width,
                                  margin: const EdgeInsets.all(20),
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Colors.red),
                                      borderRadius: BorderRadius.circular(15)),
                                  child: const Column(children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          children: [
                                            CheckboxExample(),
                                            Text(
                                              'نرمال',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            CheckboxExample(),
                                            Text(
                                              'لحظه ای',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ])),
                              const SizedBox(
                                height: 25,
                              ),
                              const CustomButton(
                                  buttonText: 'ارسال',
                                  buttonIcon: Icon(Icons.done_outline_rounded)),
                            ]),
                          )))
                ]))));
  }
}
