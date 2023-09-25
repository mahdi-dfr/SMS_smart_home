import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkeysh_sms_smart_home/widgets/custom_appbar.dart';
import 'package:turkeysh_sms_smart_home/widgets/custom_button.dart';
import 'package:turkeysh_sms_smart_home/widgets/drop_down_custom.dart';

class PhoneSetting extends StatelessWidget {
  PhoneSetting({Key? key}) : super(key: key);

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
                              'وارد کردن دفترجه تلفن',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: Get.width,
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: DropBox(
                                dropList: const [
                                  '1',
                                  '2',
                                  '3',
                                  '4',
                                  '5',
                                  '6',
                                  '7',
                                  '8',
                                  '9',
                                  '10',
                                  '11',
                                  '12'
                                ],
                                title: 'انتخاب شماره رکورد',
                                onPressed: (value) {},
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: TextFormField(
                                //controller: controller.mobilNum,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  prefixIcon:
                                      const Icon(Icons.phone_android_rounded),
                                  hintText: 'شماره سیمکارت',
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const CustomButton(
                                buttonText: 'ارسال',
                                buttonIcon: Icon(Icons.done_outline_rounded)),
                          ]))))
                ]))));
  }
}
