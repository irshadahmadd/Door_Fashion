import 'package:door_fashion/Core/Constants/textstyles.dart';
import 'package:flutter/material.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "My Order",
        style: headingStyle,
      ),
    );
  }
}
