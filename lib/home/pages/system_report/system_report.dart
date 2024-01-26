import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkeysh_sms_smart_home/widgets/custom_button.dart';
import 'package:turkeysh_sms_smart_home/widgets/drop_down_custom.dart';

import '../../../widgets/custom_app_bar.dart';
import '../../sms_controller.dart';

class SystemEReport extends StatelessWidget {
  SystemEReport({Key? key}) : super(key: key);

  final controller = ScrollController();
  String? reportNumber;

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
                        child: Column(
                          children: [
                            Container(
                              width: Get.width,
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: DropBox(
                                dropList: const [
                                  'ساعت روشن و خاموش شدن کل موتورخانه',
                                  'گزارش خروجی 3',
                                ],
                                title: 'گزارش گیری از سیستم',
                                onPressed: (value) {
                                  if (value.toString() ==
                                      'ساعت روشن و خاموش شدن کل موتورخانه') {
                                    reportNumber = '1';
                                  } else {
                                    reportNumber = '2';
                                  }
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            CustomButton(
                                buttonText: 'ارسال',
                                buttonIcon:
                                    const Icon(Icons.done_outline_rounded),
                                onClick: () {
                                  if (reportNumber != null) {
                                    Get.find<SmsController>().sendMessage(
                                        context, '80${reportNumber!}');
                                  }
                                }),
                          ],
                        ),
                      )),
                ]))));
  }
}
