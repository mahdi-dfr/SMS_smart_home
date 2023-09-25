import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:turkeysh_sms_smart_home/bindings/my_bindings.dart';
import 'package:turkeysh_sms_smart_home/home/HomePage.dart';
import 'package:turkeysh_sms_smart_home/home/pages/board/board_settings.dart';
import 'package:turkeysh_sms_smart_home/home/pages/export/export_setting.dart';
import 'package:turkeysh_sms_smart_home/home/pages/mod/mod_setting.dart';
import 'package:turkeysh_sms_smart_home/home/pages/phone/phone_number.dart';
import 'package:turkeysh_sms_smart_home/home/pages/regular/regular_settings.dart';
import 'package:turkeysh_sms_smart_home/home/pages/system_report/system_report.dart';
import 'package:turkeysh_sms_smart_home/home/pages/time/time_setting.dart';
import 'package:turkeysh_sms_smart_home/utils/constant.dart';

import 'start_page/start_page.dart';
import 'utils/pages.dart';
import 'widgets/senario_cntainer.dart';

void main() async {
  await GetStorage.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'turkeysh_sms_smart_home',
      debugShowCheckedModeBanner: false,
      initialBinding: MyBindings(),
      getPages: [
        GetPage(name: RoutsConstName.home, page: () => HomePage()),
        GetPage(name: RoutsConstName.start, page: () => StartPage()),
        GetPage(name: RoutsConstName.regular, page: () => RegularSettings()),
        GetPage(name: RoutsConstName.board, page: () => Boardsetting()),
        GetPage(name: RoutsConstName.report, page: () => SystemEReport()),
        GetPage(name: RoutsConstName.mod, page: () => ModSetting()),
        GetPage(name: RoutsConstName.time, page: () => TimeSetting()),
        GetPage(name: RoutsConstName.phone,  page: () => PhoneSetting()),
        GetPage(name: RoutsConstName.exportOn, page: () => ExportSetting()),
      ],

      initialRoute:
      GetStorage().read(MOBILE_NUMBER) != null &&
              GetStorage().read(PASSWORD) != null
          ? '/home'
          : '/start',
      locale: const Locale('fa'),
    );
  }
}













