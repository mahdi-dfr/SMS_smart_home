import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:turkeysh_sms_smart_home/helper/app_color.dart';

class SenarioContainer extends StatelessWidget {
  SenarioContainer(
      {required this.img,
      required this.title,
      this.fontSize = 14,
      required this.onSenarioPressed,
      Key? key})
      : super(key: key);

  String img;
  String title;
  Function onSenarioPressed;
  double fontSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onSenarioPressed();
      },
      child: Container(
        width: Get.width / 3,
        height: Get.height / 7,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1, color: Colors.black),
          color: AppColor.foregroundColorLight,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              img,
              width: 40,
              height: 40,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: fontSize,
                  color: Colors.white

                ),
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
