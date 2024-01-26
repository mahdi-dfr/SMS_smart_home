import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkeysh_sms_smart_home/helper/app_color.dart';
import 'package:turkeysh_sms_smart_home/home/sms_controller.dart';
import 'package:turkeysh_sms_smart_home/widgets/custom_button.dart';
import 'package:turkeysh_sms_smart_home/widgets/drop_down_custom.dart';

import '../../../widgets/check_box_custom.dart';
import '../../../widgets/custom_app_bar.dart';

class ExportSetting extends StatefulWidget {
  ExportSetting({Key? key}) : super(key: key);

  String timePrintOn = 'ساعت روشن شدن';
  String timePrintOff = 'ساعت خاموش شدن';

  @override
  State<ExportSetting> createState() => _ExportSettingState();
}

class _ExportSettingState extends State<ExportSetting> {
  final controller = ScrollController();

  Time _time = Time(hour: 11, minute: 30, second: 20);
  Time _timeOff = Time(hour: 11, minute: 30, second: 20);
  bool iosStyle = true;
  String? relayNumber;
  String? sendTimeOn;
  String? sendTimeOff;
  String? timerNumber;
  List<String> days = [
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
  ];
  String? day;

  void onTimeChanged(Time newTime) {
    setState(() {
      _time = newTime;
    });

    widget.timePrintOn = _time.toString();
    sendTimeOn = (_time.hour
        .toString()
        .length == 1
        ? '0${_time.hour}'
        : _time.hour.toString()) +
        (_time.minute
            .toString()
            .length == 1
            ? '0${_time.minute}'
            : _time.minute.toString());
  }

  void onTimeOffChanged(Time newTime) {
    setState(() {
      _timeOff = newTime;
    });
    sendTimeOff = (_timeOff.hour
        .toString()
        .length == 1
        ? '0${_timeOff.hour}'
        : _timeOff.hour.toString()) +
        (_timeOff.minute
            .toString()
            .length == 1
            ? '0${_timeOff.minute}'
            : _timeOff.minute.toString());

    widget.timePrintOff = _timeOff.toString();
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
                child: SingleChildScrollView(
                  controller: controller,
                  child: Column(children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'تنظیمات زمانی روشن و خاموش شدن موتورخانه',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white
                      ),
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
                          // '3',
                          // '4',
                          // '5',
                          // '6',
                          // '7',
                          // '8',
                          // '9',
                          // '10',
                          // '11',
                          // '12'
                        ],
                        title: ' انتخاب شماره برد رله',
                        onPressed: (value) {
                          relayNumber = value.toString();
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 12,
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
                          border:
                          Border.all(width: 1, color: Colors.white),
                        ),
                        margin: const EdgeInsets.only(
                            left: 20, right: 20),
                        child: Center(
                            child: Text(
                              widget.timePrintOn,
                              style: const TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          showPicker(
                            context: context,
                            value: _timeOff,
                            onChange: onTimeOffChanged,
                          ),
                        );
                      },
                      child: Container(
                        width: Get.width,
                        padding: const EdgeInsets.all(8),
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border:
                          Border.all(width: 1, color: Colors.white),
                        ),
                        margin: const EdgeInsets.only(
                            left: 20, right: 20),
                        child: Center(
                            child: Text(
                              widget.timePrintOff,
                              style: const TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
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
                        title: ' انتخاب شماره تایمر',
                        onPressed: (value) {
                          timerNumber = value.toString();
                        },
                      ),
                    ),
                    Container(
                      width: Get.width,
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          border:
                          Border.all(width: 1, color: AppColor.foregroundColor),
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  CheckboxExample(
                                    onPressed: (value) {
                                      if (value) {
                                        days[0] = '1';
                                      } else {
                                        days[0] = '0';
                                      }
                                    },
                                  ),
                                  const Text(
                                    'شنبه',
                                    style: TextStyle(
                                          fontWeight: FontWeight.bold, color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  CheckboxExample(
                                    onPressed: (value) {
                                      if (value) {
                                        days[1] = '1';
                                      } else {
                                        days[1] = '0';
                                      }
                                    },
                                  ),
                                  const Text(
                                    'یکشنبه',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  CheckboxExample(
                                    onPressed: (value) {
                                      if (value) {
                                        days[2] = '1';
                                      } else {
                                        days[2] = '0';
                                      }
                                    },
                                  ),
                                  const Text(
                                    'دوشنبه',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  CheckboxExample(
                                    onPressed: (value) {
                                      if (value) {
                                        days[3] = '1';
                                      } else {
                                        days[3] = '0';
                                      }
                                    },
                                  ),
                                  const Text(
                                    'سه شنبه',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                children: [
                                  CheckboxExample(
                                    onPressed: (value) {
                                      if (value) {
                                        days[4] = '1';
                                      } else {
                                        days[4] = '0';
                                      }
                                    },
                                  ),
                                  const Text(
                                    'چهارشنبه',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  CheckboxExample(
                                    onPressed: (value) {
                                      if (value) {
                                        days[5] = '1';
                                      } else {
                                        days[5] = '0';
                                      }
                                    },
                                  ),
                                  const Text(
                                    'پنجشنبه',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  CheckboxExample(
                                    onPressed: (value) {
                                      if (value) {
                                        days[6] = '1';
                                      } else {
                                        days[6] = '0';
                                      }
                                    },
                                  ),
                                  const Text(
                                    'جمعه',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, color: Colors.white),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  CheckboxExample(
                                    onPressed: (value) {
                                      if (value) {
                                        days[7] = '1';
                                      } else {
                                        days[7] = '0';
                                      }
                                    },
                                  ),
                                  const Text(
                                    'تمام هفته',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold, color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
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
                          day = days[0]+days[1]+days[2]+days[3]+days[4]+days[5]+days[6]+days[7];
                          if (relayNumber != null && sendTimeOff != null &&
                              sendTimeOn != null && timerNumber != null) {
                            Get.find<SmsController>().sendMessage(context,
                                'T${relayNumber!}${sendTimeOn!}${sendTimeOff!}${timerNumber!}$day');
                          }else{
                            Get.snackbar('خطا', 'لطفا ابتدا اطلاعات را تکمیل نمایید');
                          }
                        }),
                    const SizedBox(
                      height: 25,
                    ),
                  ]),
                )
            )));
  }
}
