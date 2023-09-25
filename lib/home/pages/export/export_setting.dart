import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkeysh_sms_smart_home/widgets/custom_appbar.dart';
import 'package:turkeysh_sms_smart_home/widgets/custom_button.dart';
import 'package:turkeysh_sms_smart_home/widgets/drop_down_custom.dart';

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

  void onTimeChanged(Time newTime) {
    setState(() {
      _time = newTime;
    });

    widget.timePrintOn = _time.toString();

  }

  void onTimeOffChanged(Time newTime) {
    setState(() {
      _timeOff = newTime;
    });


    widget.timePrintOff = _timeOff.toString();
  }

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
                                'تنظیمات زمانی روشن و خاموش شدن خروجی ها',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
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
                                  title: ' انتخاب شماره برد رله',
                                  onPressed: (value) {},
                                ),
                              ),

                              const SizedBox(height: 12,),

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
                                        width: 1, color: Colors.red),
                                  ),
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Center(
                                      child: Text(
                                        widget.timePrintOn,
                                        style: const TextStyle(
                                            fontSize: 17,
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
                                    border: Border.all(
                                        width: 1, color: Colors.red),
                                  ),
                                  margin: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Center(
                                      child: Text(
                                        widget.timePrintOff,
                                        style: const TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold),
                                      )),
                                ),
                              ),

                              const SizedBox(height: 20,),

                              Container(
                                width: Get.width,
                                margin: const EdgeInsets.only(
                                    left: 20, right: 20),
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
                                  onPressed: (value) {},
                                ),
                              ),


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
