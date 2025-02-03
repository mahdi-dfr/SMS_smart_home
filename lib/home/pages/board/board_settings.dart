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
                            margin: const EdgeInsets.only(left: 20, right: 20),
                            child: DropBox(
                              dropList: const [
                                '1',
                                '2',
                                '3',
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
                          decoration: BoxDecoration(

                              border:
                              Border.all(width: 1, color: Colors.red),
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  Column(
                                    children: [
                                      CheckboxExample(onPressed: (bool ) {  },),
                                      const Text(
                                        '1',
                                        style: TextStyle(
                                          color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      CheckboxExample(onPressed: (bool ) {  },),
                                      const Text(
                                        '2',
                                        style: TextStyle(color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      CheckboxExample(onPressed: (bool ) {  },),
                                      const Text(
                                        '3',
                                        style: TextStyle(color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      CheckboxExample(onPressed: (bool ) {  },),
                                      const Text(
                                        '4',
                                        style: TextStyle(color: Colors.white,
                                            fontWeight: FontWeight.bold),
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
                                      CheckboxExample(onPressed: (bool ) {  },),
                                      const Text(
                                        '5',
                                        style: TextStyle(color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      CheckboxExample(onPressed: (bool ) {  },),
                                      const Text(
                                        '6',
                                        style: TextStyle(color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      CheckboxExample(onPressed: (bool ) {  },),
                                      const Text(
                                        '7',
                                        style: TextStyle(color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      CheckboxExample(onPressed: (bool ) {  },),
                                      const Text(
                                        '8',
                                        style: TextStyle(color: Colors.white,
                                            fontWeight: FontWeight.bold),
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
                                      CheckboxExample(onPressed: (bool ) {  },),
                                      const Text(
                                        '9',
                                        style: TextStyle(color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      CheckboxExample(onPressed: (bool ) {  },),
                                      const Text(
                                        '10',
                                        style: TextStyle(color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      CheckboxExample(onPressed: (bool ) {  },),
                                      const Text(
                                        '11',
                                        style: TextStyle(color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      CheckboxExample(onPressed: (bool ) {  },),
                                      const Text(
                                        '12',
                                        style: TextStyle(color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        CustomButton(
                          buttonText: 'ارسال',
                          buttonIcon: const Icon(Icons.done_outline_rounded),
                          onClick: () {
                            board = boards[0] +
                                boards[1] +
                                boards[2] +
                                boards[3] +
                                boards[4] +
                                boards[5] +
                                boards[6] +
                                boards[7] +
                                boards[8] +
                                boards[9] +
                                boards[10] +
                                boards[11];
                            if (boardNumber != null) {
                              Get.find<SmsController>().sendMessage(
                                  context, 'RB${boardNumber!}${board!}');
                            } else {
                              Get.snackbar(
                                  'خطا', 'لطفا ابتدا اطلاعات را تکمیل نمایید',
                                  backgroundColor: Colors.red);
                            }
                          },
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                      ],
                    )))));
  }
}
