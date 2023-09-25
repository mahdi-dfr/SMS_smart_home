import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkeysh_sms_smart_home/utils/constant.dart';
import 'package:turkeysh_sms_smart_home/widgets/check_box_custom.dart';
import 'package:turkeysh_sms_smart_home/widgets/custom_appbar.dart';
import 'package:turkeysh_sms_smart_home/widgets/custom_button.dart';
import 'package:turkeysh_sms_smart_home/widgets/senario_cntainer.dart';

import '../../../widgets/drop_down_custom.dart';

class Boardsetting extends StatefulWidget {
  Boardsetting({Key? key}) : super(key: key);

  @override
  State<Boardsetting> createState() => _BoardsettingState();
}

class _BoardsettingState extends State<Boardsetting> {
  final controller = ScrollController();
  var checkedValue;

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
                                    title: 'انتخاب شماره برد',
                                    onPressed: (value) {},
                                  ),
                                ),
                              ),
                              const SizedBox(height: 30,),
                              Container(
                                width: Get.width,
                                margin: const EdgeInsets.all(20),
                                decoration: BoxDecoration(
                                   
                                    border:
                                        Border.all(width: 1, color: Colors.red),
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          children: [
                                            CheckboxExample(),
                                            Text(
                                              '1',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            CheckboxExample(),
                                            Text(
                                              '2',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            CheckboxExample(),
                                            Text(
                                              '3',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            CheckboxExample(),
                                            Text(
                                              '4',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          children: [
                                            CheckboxExample(),
                                            Text(
                                              '5',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            CheckboxExample(),
                                            Text(
                                              '6',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            CheckboxExample(),
                                            Text(
                                              '7',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            CheckboxExample(),
                                            Text(
                                              '8',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          children: [
                                            CheckboxExample(),
                                            Text(
                                              '9',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            CheckboxExample(),
                                            Text(
                                              '10',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            CheckboxExample(),
                                            Text(
                                              '11',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                        Column(
                                          children: [
                                            CheckboxExample(),
                                            Text(
                                              '12',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 12,
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 25,
                              ),
                              const CustomButton(buttonText: 'ارسال', buttonIcon: Icon(Icons.done_outline_rounded)),
                            ],
                          )))
                ]))));
  }
}
