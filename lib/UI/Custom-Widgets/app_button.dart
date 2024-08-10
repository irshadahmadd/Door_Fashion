import 'package:door_fashion/Core/Constants/colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  // final Color appbtncolor;
  // final Widget btnicon;
  final String title;
  final VoidCallback ontap;
  const AppButton({
    super.key,
    // required this.appbtncolor,
    // required this.btnicon,
    required this.title,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ontap,
        child: Center(
          child: Container(
            height: MediaQuery.of(context).size.height / 14,
            width: MediaQuery.of(context).size.width / 1.1,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: primeryColor),
            child: Center(
              child: Text(
                title,
                style: const TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ));
  }
}
