import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helper/app_color.dart';
import 'custom_toolbar_shape.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final bool centerTitle;
  final Color backgroundColor;
  final Widget? titleWidget;
  final bool haveBackButton;
  Function()? onMenuClicked;

  CustomAppBar({Key? key,
    required this.height,
    this.centerTitle = false,
    this.titleWidget,
    this.onMenuClicked,
    this.haveBackButton = true,
    this.backgroundColor = Colors.transparent})
      : preferredSize = Size.fromHeight(height),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: backgroundColor,
        child: Stack(fit: StackFit.loose, children: <Widget>[
          Container(
              color: Colors.transparent,
              width: Get.width,
              height: height,
              margin: EdgeInsets.only(bottom: Get.height / 35),
              child: CustomPaint(
                painter: CustomToolbarShape(lineColor: Get.theme.primaryColor),
              )),
          Align(
              alignment: const Alignment(0.0, 0.8),
              child: Container(
                  height: Get.width < 600 ? Get.height / 14 : Get.height / 10,
                  width: Get.width * 0.8,
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 2.0,
                              spreadRadius: .5,
                              offset: Offset(
                                0.0,
                                5.0,
                              ),
                            )
                          ],
                        ),
                        child: Image.asset(
                          'assets/images/logo_wide2.png', fit: BoxFit.cover,)),
                  )),
          Align(
            alignment: const Alignment(0, 0),
            child: AppBar(
              title: titleWidget,
              centerTitle: centerTitle,
              backgroundColor: Colors.transparent,
              elevation: 0,
              automaticallyImplyLeading: false,
              actions: [
                haveBackButton ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: IconButton(onPressed: () {
                    Get.back();
                  },
                      icon: const Icon(
                        Icons.arrow_forward_rounded, color: Colors.white,)),
                ) : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: IconButton(onPressed: onMenuClicked,
                      icon: const Icon(
                        Icons.menu, color: Colors.white,)),
                ) ,
              ],
            ),
          )
        ]));
  }

  @override
  final Size preferredSize;
}
