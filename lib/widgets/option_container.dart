// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:turkeysh_sms_smart_home/utils/constant.dart';
import 'package:turkeysh_sms_smart_home/utils/pages.dart';

import '../helper/app_color.dart';

class OptionContainer extends StatelessWidget {
  double? widthContainer;
  double textSize;
  String titleText;
  Function onClick;

  OptionContainer(
      {required this.titleText,
      required this.widthContainer,
      required this.onClick,
      this.textSize = 14,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: widthContainer,
        height: 70,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 8,
            backgroundColor: AppColor.foregroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50.0),
            ),
          ),
          child: Text(
            titleText,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.white,
                fontSize: textSize,
                fontWeight: FontWeight.bold),
          ),
          onPressed: () {
            onClick();
          },
        ));
  }
}
