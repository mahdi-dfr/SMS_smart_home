import 'package:flutter/material.dart';
import 'package:flutter_collapsing_toolbar/flutter_collapsing_toolbar.dart';
import 'package:get/get.dart';

class CustomAppbar extends StatefulWidget {
  CustomAppbar({this.isOptionsShow = false, this.onPressed, Key? key})
      : super(key: key);

  bool? isOptionsShow;
  Function? onPressed;

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  final controller = ScrollController();
  double headerOffset = 0.0;

  @override
  Widget build(BuildContext context) {
    return CollapsingToolbar(
      controller: controller,
      expandedHeight: 160,
      collapsedHeight: 64,
      decorationForegroundColor: const Color(0xffd90000),
      decorationBackgroundColor: Colors.white,
      onCollapsing: (double offset) {
        setState(() {
          headerOffset = offset;
        });
      },
      actions: [
        widget.isOptionsShow!
            ? ElevatedButton(
                onPressed: () {
                  widget.onPressed!();
                },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(const CircleBorder()),
                  backgroundColor:
                      MaterialStateProperty.all(Colors.transparent),
                  elevation: MaterialStateProperty.all(0.0),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              )
            : const SizedBox(),
      ],
      featureCount: 1,
      featureIconBuilder: (context, index) {
        return Image.asset(
          'assets/images/turkeysh_full_back.png',
          width: Get.width / 3,
        );
      },
      featureLabelBuilder: (context, index) {
        return const Text(
          '',
          textAlign: TextAlign.center,
          maxLines: 1,
          style: TextStyle(
            fontSize: 12,
            color: Colors.white,
          ),
        );
      },
      featureOnPressed: (context, index) {},
    );
  }
}
