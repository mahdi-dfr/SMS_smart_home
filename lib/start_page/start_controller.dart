import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:turkeysh_sms_smart_home/utils/constant.dart';

import '../helper/app_color.dart';

class StartController extends GetxController {

  TextEditingController mobilNum = TextEditingController();
  TextEditingController password = TextEditingController();
  var isLoading = false.obs;


  saveUserInfo(){
    if(mobilNum.text.isNotEmpty && password.text.isNotEmpty) {
      if(mobilNum.text.length != 11 || !mobilNum.text.startsWith('09')){
        Get.snackbar(
            'لطفا شماره سیمکارت را به فرمت صحیح وارد کنید', '', backgroundColor: AppColor.foregroundColor);
        return;
      }
      isLoading.value = true;
      GetStorage().write(MOBILE_NUMBER, mobilNum.text);
      GetStorage().write(PASSWORD, password.text);
      if(GetStorage().read(MOBILE_NUMBER) == mobilNum.text && GetStorage().read(PASSWORD) == password.text){
        Get.toNamed('/home');
        Get.snackbar(
            'اطلاعات با موفقیت ذخیره شد', '', backgroundColor: Colors.amber);
      }
      isLoading.value = false;
    }else{
      Get.snackbar(
          'لطفا شماره سیمکارت و رمز خود را وارد کنید', '', backgroundColor: AppColor.foregroundColor,);
    }

  }


}
