import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constant.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Icon buttonIcon;
  Function() onClick;

  CustomButton({
    required this.buttonText,
    required this.buttonIcon,
    required this.onClick,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20),
      width: Get.width,
      height: Get.height / 16,
      child: ElevatedButton(
          onPressed: onClick,
          style: ElevatedButton.styleFrom(
              backgroundColor: forgroundColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100))),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buttonIcon,
                const SizedBox(
                  width: 8,
                ),
                Text(
                  buttonText,
                  style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white),
                )
              ],
            ),
          )),
    );
  }
}
