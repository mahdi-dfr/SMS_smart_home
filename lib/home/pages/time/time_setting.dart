import 'package:day_night_time_picker/day_night_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkeysh_sms_smart_home/widgets/custom_appbar.dart';
import 'package:turkeysh_sms_smart_home/widgets/custom_button.dart';
import 'package:turkeysh_sms_smart_home/widgets/drop_down_custom.dart';

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

  void onTimeChanged(Time newTime) {
    setState(() {
      _time = newTime;
    });

    widget.timePrint = _time.toString();
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
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  'تنظیمات ساعت دستگاه',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
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
                                    title: 'انتخاب شماره برد',
                                    onPressed: (value) {},
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
                                          width: 1, color: Colors.red),
                                    ),
                                    margin: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    child: Center(
                                        child: Text(
                                      widget.timePrint,
                                      style: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 25,
                                ),
                                const CustomButton(
                                    buttonText: 'ارسال',
                                    buttonIcon:
                                        Icon(Icons.done_outline_rounded)),
                              ],
                            ),
                          )))
                ]))));
  }
}
