import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkeysh_sms_smart_home/home/sms_controller.dart';
import 'package:turkeysh_sms_smart_home/widgets/custom_button.dart';
import 'package:turkeysh_sms_smart_home/widgets/drop_down_custom.dart';

import '../../../helper/app_color.dart';
import '../../../widgets/custom_app_bar.dart';

class PhoneSetting extends StatelessWidget {
  PhoneSetting({Key? key}) : super(key: key);

  final controller = ScrollController();
  final TextEditingController phoneNumber = TextEditingController();
  String? recordNumber;

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
                          child: Column(children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'وارد کردن دفترجه تلفن',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: Get.width,
                          margin: const EdgeInsets.only(left: 20, right: 20),
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
                            onPressed: (value) {
                              recordNumber = value.toString();
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20, right: 20),
                          child: TextFormField(
                            controller: phoneNumber,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              prefixIconColor: Colors.white,
                              fillColor: AppColor.foregroundColorLight,
                              prefixIcon:
                                  const Icon(Icons.phone_android_rounded),
                              hintText: 'شماره سیمکارت',
                              hintStyle: TextStyle(color: Colors.grey),
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
                        CustomButton(
                            buttonText: 'ارسال',
                            buttonIcon: const Icon(Icons.done_outline_rounded),
                            onClick: () {
                              if (recordNumber != null &&
                                  phoneNumber.text.isNotEmpty) {
                                if (phoneNumber.text.length == 11) {
                                  Get.find<SmsController>().sendMessage(context,
                                      '${'N${recordNumber!}${phoneNumber.text}'}*');
                                } else {
                                  Get.snackbar(
                                      'خطا', 'فرمت شماره موبایل صحیح نمی باشد');
                                }
                              } else {
                                Get.snackbar(
                                    'خطا', 'لطفا اطلاعات را تکمیل نمایید');
                              }
                            }),
                      ])))
                ]))));
  }
}
