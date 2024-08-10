import 'package:door_fashion/Core/Constants/textstyles.dart';
import 'package:flutter/material.dart';

class Favourate extends StatelessWidget {
  const Favourate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "My Favourate",
        style: headingStyle,
      ),
    );
  }
}
