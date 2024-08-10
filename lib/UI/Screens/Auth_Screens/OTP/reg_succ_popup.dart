import 'package:door_fashion/Core/Constants/colors.dart';
import 'package:door_fashion/Core/Constants/textstyles.dart';
import 'package:door_fashion/UI/Custom-Widgets/app_button.dart';
import 'package:door_fashion/UI/Screens/Auth_Screens/SignIN/signin.dart';
import 'package:flutter/material.dart';

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1,
      height: MediaQuery.of(context).size.height / 2,
      decoration: const BoxDecoration(
        color: appbgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 100,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 5,
            height: MediaQuery.of(context).size.height / 100,
            decoration: BoxDecoration(
                color: Colors.black12, borderRadius: BorderRadius.circular(2)),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          CircleAvatar(
            backgroundColor: Colors.black12,
            radius: MediaQuery.of(context).size.width / 5,
            child: CircleAvatar(
              backgroundColor: Colors.green,
              radius: MediaQuery.of(context).size.width / 7,
              child: Icon(
                Icons.verified,
                color: Colors.white,
                size: MediaQuery.of(context).size.width / 10,
              ),
            ),
          ),
          const Text(
            "Congratulations your account is created please\nlogin to to get amazing experience",
            style: apptextstyle,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 30,
          ),
          AppButton(
              title: "Sign In",
              ontap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(),
                  ),
                );
              })
        ],
      ),
    );
  }
}
