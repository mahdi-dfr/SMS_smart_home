import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkeysh_sms_smart_home/home/sms_controller.dart';
import 'package:turkeysh_sms_smart_home/widgets/custom_button.dart';
import 'package:turkeysh_sms_smart_home/widgets/drop_down_custom.dart';

import '../../../helper/app_color.dart';
import '../../../widgets/custom_app_bar.dart';

class TimeSetting extends StatefulWidget {
  TimeSetting({Key? key}) : super(key: key);

  String timePrint = 'تنظیم ساعت';

  @override
  State<TimeSetting> createState() => _TimeSettingState();
}

class _TimeSettingState extends State<TimeSetting> {
  final controller = ScrollController();

  Time _time = Time(hour: 11, minute: 30, second: 20);
  bool iosStyle = true;
  String? day;
  String? time;

  void onTimeChanged(Time newTime) {
    setState(() {
      _time = newTime;
    });

    widget.timePrint = _time.toString();
    time = (_time.hour.toString().length == 1 ? '0${_time.hour}' : _time.hour.toString()) +
        (_time.minute.toString().length == 1 ? '0${_time.minute}' : _time.minute.toString());
    print(time);
  }



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
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              'تنظیمات ساعت دستگاه',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20, color: Colors.white),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              width: Get.width,
                              margin: const EdgeInsets.only(
                                  left: 20, right: 20),
                              child: DropBox(
                                dropList: const [
                                  'شنبه',
                                  'یکشنبه',
                                  'دوشنبه',
                                  'سه شنبه',
                                  'چهارشنبه',
                                  'پنجشنبه',
                                  'جمعه',
                                ],
                                title: 'انتخاب روز',
                                onPressed: (value) {
                                  switch(value.toString()){
                                    case 'شنبه':
                                      day='1';
                                      break;
                                    case 'یکشنبه':
                                      day='2';
                                      break;
                                    case 'دوشنبه':
                                      day='3';
                                      break;
                                    case 'سه شنبه':
                                      day='4';
                                      break;
                                    case 'چهارشنبه':
                                      day='5';
                                      break;
                                    case 'پنجشنبه':
                                      day='6';
                                      break;
                                    case 'جمعه':
                                      day='7';
                                      break;
                                  }
                                },
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(
                                  showPicker(
                                    context: context,
                                    value: _time,
                                    onChange: onTimeChanged,
                                  ),
                                );
                              },
                              child: Container(
                                width: Get.width,
                                padding: const EdgeInsets.all(8),
                                height: 60,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  border: Border.all(
                                      width: 1, color: Colors.white),
                                ),
                                margin: const EdgeInsets.only(
                                    left: 20, right: 20),
                                child: Center(
                                    child: Text(
                                  widget.timePrint,
                                  style: const TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold, color: Colors.white),
                                )),
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
                                  if(time != null && day != null){
                                    Get.find<SmsController>().sendMessage(context, 'ST${time!}${day!}');
                                  }else{
                                    Get.snackbar('خطا', 'لطفا ابتدا اطلاعات را تکمیل نمایید');
                                  }

                                }),
                          ],
                        ),
                      ))
                ]))));
  }
}
