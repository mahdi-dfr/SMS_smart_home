import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkeysh_sms_smart_home/widgets/check_box_custom.dart';
import 'package:turkeysh_sms_smart_home/widgets/custom_button.dart';

import '../../../helper/app_color.dart';
import '../../../widgets/custom_app_bar.dart';
import '../../sms_controller.dart';

class ModSetting extends StatelessWidget {
  ModSetting({Key? key}) : super(key: key);

  final controller = ScrollController();
  TextEditingController max = TextEditingController();
  TextEditingController min = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          height: 150,
        ),
        body: SafeArea(
            child: Container(
                margin: const EdgeInsets.only(top: 24.0),
                child: SingleChildScrollView(
                    controller: controller,
                    child: Center(
                      child: Column(children: [
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'تنظیم دما بر اساس Max و Min',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Container(
                            width: Get.width,
                            margin: const EdgeInsets.all(20),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 20),
                            decoration: BoxDecoration(
                                border: Border.all(width: 1, color:AppColor.foregroundColor),
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(children: [
                              TextFormField(
                                style: const TextStyle(color: Colors.white),
                                controller: max,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  prefixIcon:
                                      const Icon(Icons.thermostat_rounded),
                                  hintText: 'حداکثر دما',
                                  hintStyle: const TextStyle(color: Colors.grey),
                                  focusColor: Colors.white,
                                  filled: true,
                                  iconColor: Colors.white,
                                  fillColor: AppColor.foregroundColorLight,
                                  prefixIconColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              TextFormField(
                                style: const TextStyle(color: Colors.white),
                                controller: min,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  prefixIcon:
                                  const Icon(Icons.thermostat_rounded),
                                  hintText: 'حداقل دما',
                                  hintStyle: const TextStyle(color: Colors.grey),
                                  focusColor: Colors.white,
                                  filled: true,
                                  iconColor: Colors.white,
                                  fillColor: const Color(0xff03355b),
                                  prefixIconColor: Colors.white,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ])),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomButton(
                            buttonText: 'ارسال',
                            buttonIcon: const Icon(Icons.done_outline_rounded),
                            onClick: () {
                              if (max.text.isNotEmpty && min.text.isNotEmpty) {
                                if (int.parse(max.text) <= 100 && int.parse(min
                                    .text) <= 100) {
                                  Get.find<SmsController>().sendMessage(context,
                                      'T700${max.text}00${min.text}100000000');
                                }else{
                                  Get.snackbar('خطا', 'دما نباید از 100 بیشتر باشد', backgroundColor: Colors.red);
                                }
                              }else{
                                Get.snackbar('خطا', 'لطفا ابتدا اطلاعات را تکمیل نمایید', backgroundColor: Colors.red);
                              }
                            }),
                      ]),
                    )))));
  }
}
