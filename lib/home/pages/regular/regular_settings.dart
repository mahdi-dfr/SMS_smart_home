import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkeysh_sms_smart_home/home/sms_controller.dart';
import 'package:turkeysh_sms_smart_home/widgets/custom_appbar.dart';
import 'package:turkeysh_sms_smart_home/widgets/senario_cntainer.dart';

class RegularSettings extends StatelessWidget {
  RegularSettings({Key? key}) : super(key: key);

  final controller = ScrollController();
  final smsController = Get.find<SmsController>();

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
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SenarioContainer(
                                    img: 'assets/images/lock.svg',
                                    title: 'رله یک فعال',
                                    onSenarioPressed: () {
                                      smsController.sendMessage(context, '10');

                                    },
                                  ),
                                  SenarioContainer(
                                    img: 'assets/images/door.svg',
                                    title: 'رله دو فعال',
                                    onSenarioPressed: () {},
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SenarioContainer(
                                    img: 'assets/images/file.svg',
                                    title: 'وضعیت سیستم',
                                    onSenarioPressed: () {},
                                  ),
                                  SenarioContainer(
                                    img: 'assets/images/unlock.svg',
                                    title: 'رله یک غیرفعال',
                                    onSenarioPressed: () {},
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SenarioContainer(
                                    img: 'assets/images/sound.svg',
                                    title: 'رله دو غیرفعال',
                                    onSenarioPressed: () {},
                                  ),
                                  SenarioContainer(
                                    img: 'assets/images/power.svg',
                                    title: 'خروج از سیستم',
                                    onSenarioPressed: () {},
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SenarioContainer(
                                    img: 'assets/images/glass.svg',
                                    title: 'رله سه فعال',
                                    onSenarioPressed: () {},
                                  ),
                                  SenarioContainer(
                                    img: 'assets/images/sun.svg',
                                    title: 'رله چهار فعال',
                                    onSenarioPressed: () {},
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SenarioContainer(
                                    img: 'assets/images/moon.svg',
                                    title: 'سناریو خوابیدن',
                                    onSenarioPressed: () {},
                                  ),
                                  SenarioContainer(
                                    img: 'assets/images/home.svg',
                                    title: 'رله سه غیرفعال',
                                    onSenarioPressed: () {},
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  SenarioContainer(
                                    img: 'assets/images/house.svg',
                                    title: 'رله چهار غیرفعال',
                                    onSenarioPressed: () {},
                                  ),
                                  SenarioContainer(
                                    img: 'assets/images/tv.svg',
                                    title: 'سناریو تماشای فیلم',
                                    onSenarioPressed: () {},
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ]))));
  }
}
