import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkeysh_sms_smart_home/home/sms_controller.dart';
import 'package:turkeysh_sms_smart_home/widgets/senario_cntainer.dart';

import '../../../widgets/custom_app_bar.dart';

class RegularSettings extends StatelessWidget {
  RegularSettings({Key? key}) : super(key: key);

  final controller = ScrollController();
  final smsController = Get.find<SmsController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          height: 150,
        ),
        body: SafeArea(
            child: Container(
                margin: const EdgeInsets.only(top: 24.0),
                child: Column(children: [

                  SingleChildScrollView(
                    controller: controller,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                SenarioContainer(
                                  img: 'assets/images/unlock.svg',
                                  title: 'روشن کردن مشعل',
                                  onSenarioPressed: () {
                                    smsController.sendMessage(context, '10');
                                  },
                                ),
                                SenarioContainer(
                                  img: 'assets/images/lock.svg',
                                  title: 'خاموش کردن مشعل',
                                  onSenarioPressed: () {
                                    smsController.sendMessage(context, '11');
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                SenarioContainer(
                                  img: 'assets/images/sound.svg',
                                  title: 'روشن کردن کل موتورخانه',
                                  onSenarioPressed: () {
                                    smsController.sendMessage(context, '51');
                                  },
                                  fontSize: 12,
                                ),
                                SenarioContainer(
                                  img: 'assets/images/sound.svg',
                                  title: 'خاموش کردن کل موتورخانه',
                                  onSenarioPressed: () {
                                    smsController.sendMessage(context, '00');
                                  },
                                  fontSize: 12,
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                              children: [
                                SenarioContainer(
                                  img: 'assets/images/file.svg',
                                  title: 'وضعیت سیستم',
                                  onSenarioPressed: () {
                                    smsController.sendMessage(context, '01');
                                  },
                                ),
                                SenarioContainer(
                                  img: 'assets/images/power.svg',
                                  title: 'فعال سازی Hazard',
                                  onSenarioPressed: () {
                                    smsController.sendMessage(context, '50');
                                  },
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),

                          ],
                        ),
                      ),
                    ),
                  )
                ]))));
  }
}
