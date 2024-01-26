import 'package:flutter/material.dart';

import '../helper/app_color.dart';

class CheckboxExample extends StatefulWidget {
  CheckboxExample({required this.onPressed, super.key});
  Function(bool) onPressed;

  @override
  State<CheckboxExample> createState() => _CheckboxExampleState();
}

class _CheckboxExampleState extends State<CheckboxExample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return AppColor.foregroundColor;
    }

    return Transform.scale(
      scale: 1.5,
      child: Checkbox(
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.resolveWith(getColor),
        value: isChecked,

        onChanged: (bool? value) {
          widget.onPressed(value!);
          setState(() {
            isChecked = value;
          });

        },
      ),
    );
  }
}