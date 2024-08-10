import 'package:door_fashion/Core/Constants/textstyles.dart';
import 'package:flutter/material.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "My Profile",
        style: headingStyle,
      ),
    );
  }
}
