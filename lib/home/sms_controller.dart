import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';
import 'package:turkeysh_sms_smart_home/utils/constant.dart';

import '../helper/app_color.dart';

class SmsController extends GetxController {

  late var platform;
  late String number;
  late String password;

  @override
  onInit() {
    super.onInit();
    platform = const MethodChannel('sms_channel');
  }


  sendMessage(BuildContext context, String message) async {
    number = GetStorage().read(MOBILE_NUMBER);
    password = GetStorage().read(PASSWORD);

    Dialogs.materialDialog(
        msg: 'در صورت تایید تنظیمات برای دستگاه ارسال می شود.',
        title: "ارسال",
        color: Colors.white,
        context: context,
        actions: [
          IconsOutlineButton(
            onPressed: () {
              Get.back();
            },
            text: 'انصراف',
            iconData: Icons.cancel_outlined,
            textStyle: const TextStyle(color: Colors.grey),
            iconColor: Colors.grey,
          ),
          IconsButton(
            onPressed: () async {
              await sendSMS(number, '!!$password$message');
              Get.back();
            },
            text: 'تایید',
            iconData: Icons.done,
            color: AppColor.foregroundColor,
            textStyle: const TextStyle(color: Colors.white),
            iconColor: Colors.white,
          ),
        ]);
  }

  Future<dynamic> sendSMS(String number, String message) async {
    try {
      final result = await platform.invokeMethod(
          'nativeSMSMethod', {'number': number, 'message': message});
      return result;
    } on PlatformException catch (err) {
      return err.toString();
    }
  }

}