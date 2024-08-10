import 'dart:async';
import 'package:door_fashion/UI/Screens/Onboarding/onboardingone.dart';
import 'package:flutter/material.dart';

class SplashScreenFirst extends StatefulWidget {
  const SplashScreenFirst({super.key});

  @override
  State<SplashScreenFirst> createState() => _SplashScreenFirstState();
}

class _SplashScreenFirstState extends State<SplashScreenFirst> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      (() {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const Onboardingone(),
          ),
        );
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1,
      height: MediaQuery.of(context).size.height / 1,
      decoration: const BoxDecoration(
        color: Colors.transparent,
        image: DecorationImage(
            image: AssetImage("assets/splashbg.png"), fit: BoxFit.cover),
      ),
    );
  }
}
