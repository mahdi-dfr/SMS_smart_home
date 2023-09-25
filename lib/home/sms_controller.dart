
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';
import 'package:material_dialogs/widgets/buttons/icon_outline_button.dart';
import 'package:turkeysh_sms_smart_home/utils/constant.dart';

class SmsController extends GetxController{


  sendMessage(BuildContext context, String message) async {
    String number = GetStorage().read(MOBILE_NUMBER);
    List<String> recipents = [number];
    String password = GetStorage().read(PASSWORD);

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
            textStyle: TextStyle(color: Colors.grey),
            iconColor: Colors.grey,
          ),
          IconsButton(
            onPressed: () async {

              Get.back();

            },
            text: 'تایید',
            iconData: Icons.done,
            color: Colors.red,
            textStyle: TextStyle(color: Colors.white),
            iconColor: Colors.white,
          ),
        ]);
  }

}