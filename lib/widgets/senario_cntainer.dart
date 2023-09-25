import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SenarioContainer extends StatelessWidget {
   SenarioContainer({
    required this.img,
    required this.title,
    required this.onSenarioPressed,

    Key? key}) : super(key: key);

  String img;
  String title;
  Function onSenarioPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onSenarioPressed();
      },
      child: Container(
        width: Get.width / 3,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(width: 1, color: Colors.black),
          color: const Color(0x1aff0000),
        ),
        child: Column(
          children: [
            SvgPicture.asset(img, width: 60, height: 60,),
            const SizedBox(height: 4,),
            Text(title, style: const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
