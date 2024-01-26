import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SMSHelper extends GetxController {
  late var platform;

  @override
  onInit(){
    super.onInit();
    platform = const MethodChannel('sms_channel');
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
