import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkeysh_sms_smart_home/home/sms_controller.dart';
import 'package:turkeysh_sms_smart_home/widgets/check_box_custom.dart';
import 'package:turkeysh_sms_smart_home/widgets/custom_button.dart';

import '../../../helper/app_color.dart';
import '../../../widgets/custom_app_bar.dart';
import '../../../widgets/drop_down_custom.dart';

class Boardsetting extends StatefulWidget {
  Boardsetting({Key? key}) : super(key: key);

  @override
  State<Boardsetting> createState() => _BoardsettingState();
}

class _BoardsettingState extends State<Boardsetting> {
  final controller = ScrollController();
  var checkedValue;
  var board1 = true.obs;
  var board2 = false.obs;
  String? boardNumber;
  List<String> boards = [
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
  ];
  String? board;

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
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Container(
                            width: Get.width,
                            margin: const EdgeInsets.only(
                                left: 20, right: 20),
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
                              title: 'انتخاب شماره برد',
                              onPressed: (value) {
                                boardNumber = value.toString();
                                if (value.toString() == '1') {
                                  board1.value = true;
                                  board2.value = false;
                                } else {
                                  board1.value = false;
                                  board2.value = true;
                                }
                              },
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          width: Get.width,
                          margin: const EdgeInsets.all(20),
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          decoration: BoxDecoration(
                              border:
                              Border.all(width: 1, color: AppColor.foregroundColor,),
                              borderRadius: BorderRadius.circular(15)),
                          child: Obx(() {
                            return board1.value ? Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Row(
                                  children: [
                                    CheckboxExample(onPressed: (value) {
                                      if (value) {
                                        boards[0] = '1';
                                      } else {
                                        boards[0] = '0';
                                      }
                                    },),
                                    const SizedBox(width: 12,),
                                    const Text(
                                      'send SMS',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, color: Colors.white),
                                    ),

                                  ],
                                ),

                                Row(
                                  children: [
                                    CheckboxExample(onPressed: (value) {
                                      if (value) {
                                        boards[1] = '1';
                                      } else {
                                        boards[1] = '0';
                                      }
                                    },),
                                    const SizedBox(width: 12,),
                                    const Text(
                                      'Ring',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, color: Colors.white),
                                    ),

                                  ],
                                ),

                                Row(
                                  children: [
                                    CheckboxExample(onPressed: (value) {
                                      if (value) {
                                        boards[2] = '1';
                                      } else {
                                        boards[2] = '0';
                                      }
                                    },),
                                    const SizedBox(width: 12,),
                                    const Text(
                                      'Power SMS',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, color: Colors.white),
                                    ),

                                  ],
                                ),

                                Row(

                                  children: [
                                    CheckboxExample(onPressed: (value) {
                                      if (value) {
                                        boards[3] = '1';
                                      } else {
                                        boards[3] = '0';
                                      }
                                    },),
                                    const SizedBox(width: 12,),
                                    const Text(
                                      'timer',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, color: Colors.white),
                                    ),

                                  ],
                                ),

                                const SizedBox(
                                  height: 12,
                                ),
                              ],
                            ) : Column(
                              children: [
                                Row(
                                  children: [
                                    CheckboxExample(onPressed: (value) {
                                      if (value) {
                                        boards[0] = '1';
                                      } else {
                                        boards[0] = '0';
                                      }
                                    },),
                                    const SizedBox(width: 12,),
                                    const Text(
                                      'فعال سازی و غیرفعال سازی موتورخانه',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, color: Colors.white),
                                    ),

                                  ],
                                ),

                                Row(
                                  children: [
                                    CheckboxExample(onPressed: (value) {
                                      if (value) {
                                        boards[1] = '1';
                                      } else {
                                        boards[1] = '0';
                                      }
                                    },),
                                    const SizedBox(width: 12,),
                                    const Text(
                                      'فعال سازی siren',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, color: Colors.white),
                                    ),

                                  ],
                                ),

                                Row(
                                  children: [
                                    CheckboxExample(onPressed: (value) {
                                      if (value) {
                                        boards[2] = '1';
                                      } else {
                                        boards[2] = '0';
                                      }
                                    },),
                                    const SizedBox(width: 12,),
                                    const Text(
                                      'میانگین براساس سنسور 1',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, color: Colors.white),
                                    ),

                                  ],
                                ),

                                Row(
                                  children: [
                                    CheckboxExample(onPressed: (value) {
                                      if (value) {
                                        boards[3] = '1';
                                      } else {
                                        boards[3] = '0';
                                      }
                                    },),
                                    const SizedBox(width: 12,),
                                    const Text(
                                      'میانگین براساس سنسور 2',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, color: Colors.white),
                                    ),

                                  ],
                                ),

                                Row(
                                  children: [
                                    CheckboxExample(onPressed: (value) {
                                      if (value) {
                                        boards[4] = '1';
                                      } else {
                                        boards[4] = '0';
                                      }
                                    },),
                                    const SizedBox(width: 12,),
                                    const Text(
                                      'میانگین براساس سنسور 3',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, color: Colors.white),
                                    ),

                                  ],
                                ),

                                Row(
                                  children: [
                                    CheckboxExample(onPressed: (value) {
                                      if (value) {
                                        boards[5] = '1';
                                      } else {
                                        boards[5] = '0';
                                      }
                                    },),
                                    const SizedBox(width: 12,),
                                    const Text(
                                      'میانگین براساس سنسور 4',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, color: Colors.white),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    CheckboxExample(onPressed: (value) {
                                      if (value) {
                                        boards[6] = '1';
                                      } else {
                                        boards[6] = '0';
                                      }
                                    },),
                                    const SizedBox(width: 12,),
                                    const Text(
                                      'میانگین براساس سنسور 1 و 2',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, color: Colors.white),
                                    ),

                                  ],
                                ),

                                Row(
                                  children: [
                                    CheckboxExample(onPressed: (value) {
                                      if (value) {
                                        boards[7] = '1';
                                      } else {
                                        boards[7] = '0';
                                      }
                                    },),
                                    const SizedBox(width: 12,),
                                    const Text(
                                      'میانگین براساس سنسور 3 و 4',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, color: Colors.white),
                                    ),

                                  ],
                                ),

                                Row(
                                  children: [
                                    CheckboxExample(onPressed: (value) {
                                      if (value) {
                                        boards[8] = '1';
                                      } else {
                                        boards[8] = '0';
                                      }
                                    },),
                                    const SizedBox(width: 12,),
                                    const Text(
                                      'میانگین براساس سنسور 1و2و3و4',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold, color: Colors.white),
                                    ),

                                  ],
                                ),

                                const SizedBox(
                                  height: 12,
                                ),
                              ],
                            );
                          }),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomButton(
                          buttonText: 'ارسال',
                          buttonIcon: const Icon(Icons.done_outline_rounded),
                          onClick: () {
                            board =
                                boards[0] + boards[1] + boards[2] + boards[3] +
                                    boards[4] + boards[5] + boards[6] +
                                    boards[7] + boards[8] + boards[9] +
                                    boards[10] + boards[11];
                            if (boardNumber != null) {
                              Get.find<SmsController>().sendMessage(
                                  context, 'RB${boardNumber!}${board!}');
                            } else {
                              Get.snackbar(
                                  'خطا', 'لطفا ابتدا اطلاعات را تکمیل نمایید');
                            }
                          },),
                        const SizedBox(
                          height: 25,
                        ),
                      ],
                    ))
            )));
  }
}
