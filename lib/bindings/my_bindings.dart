
import 'package:get/get.dart';
import 'package:turkeysh_sms_smart_home/home/sms_controller.dart';
import 'package:turkeysh_sms_smart_home/start_page/start_controller.dart';

class MyBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(StartController());
    Get.put(SmsController());
  }



}