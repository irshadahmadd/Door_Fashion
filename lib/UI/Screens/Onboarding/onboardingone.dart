import 'dart:async';
import 'package:door_fashion/Core/Constants/colors.dart';
import 'package:door_fashion/Core/Constants/textstyles.dart';
import 'package:door_fashion/UI/Screens/Auth_Screens/SignUp/createaccount.dart';
import 'package:door_fashion/UI/Custom-Widgets/app_button.dart';
import 'package:door_fashion/UI/Screens/Onboarding/onboardingtwo.dart';
import 'package:flutter/material.dart';

class Onboardingone extends StatefulWidget {
  const Onboardingone({super.key});

  @override
  State<Onboardingone> createState() => _OnboardingoneState();
}

class _OnboardingoneState extends State<Onboardingone> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Onboardingtwo(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appbgColor,
      height: MediaQuery.of(context).size.height / 1,
      width: MediaQuery.of(context).size.width / 1,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.7,
            width: MediaQuery.of(context).size.width / 1.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: const DecorationImage(
                  image: AssetImage("assets/cloth2.jpg"), fit: BoxFit.cover),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 9,
                  right: MediaQuery.of(context).size.width / 15),
              child: const Text(
                "Various Collections of the latest products",
                style: headingStyle,
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 9,
                  right: MediaQuery.of(context).size.width / 15),
              child: const Text(
                "Order the best quality products for your fashion of your owen choice",
                style: apptextstyle,
              )),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                backgroundColor: primeryColor,
                radius: 5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 80,
              ),
              const CircleAvatar(
                backgroundColor: apptextcolor,
                radius: 5,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 80,
              ),
              const CircleAvatar(
                backgroundColor: apptextcolor,
                radius: 5,
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          AppButton(
              title: "Create Account",
              ontap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Createaccount(),
                  ),
                );
              }),
          SizedBox(
            height: MediaQuery.of(context).size.height / 50,
          ),
          const Text(
            "Already have an account",
            style: appbotumstyle,
          )
        ],
      ),
    );
  }
}
