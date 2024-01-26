import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../helper/app_color.dart';
import 'start_controller.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    var controller = Get.find<StartController>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/back_pic2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 10,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/turkeysh_logo.png',
                        width: width * 0.8,
                        height: height * 0.3,
                      ),
                    ),
                    const SizedBox(height: 40.0),
                    TextFormField(
                      controller: controller.mobilNum,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.phone_android_rounded),
                        hintText: 'شماره سیمکارت',
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    TextFormField(
                      controller: controller.password,
                      keyboardType: TextInputType.visiblePassword,
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock),
                        hintText: 'رمز کاربر',
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(height: 30.0),
                    SizedBox(
                      width: width * 0.8,
                      height: height/15,
                      child: Obx(
                        () => ElevatedButton(
                          onPressed: () {
                            controller.saveUserInfo();
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColor.foregroundColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            padding: const EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 20.0),
                          ),
                          child: controller.isLoading.value
                              ? const Center(
                                  child: CircularProgressIndicator(),
                                )
                              : const Text(
                                  'ورود',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
