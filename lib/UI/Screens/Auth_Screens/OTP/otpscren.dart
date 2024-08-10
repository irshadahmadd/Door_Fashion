// ignore_for_file: library_private_types_in_public_api

import 'package:door_fashion/Core/Constants/colors.dart';
import 'package:door_fashion/Core/Constants/textstyles.dart';
import 'package:door_fashion/UI/Custom-Widgets/app_button.dart';
import 'package:door_fashion/UI/Screens/Auth_Screens/OTP/otptextfield.dart';
import 'package:door_fashion/UI/Screens/Auth_Screens/OTP/reg_succ_popup.dart';
import 'package:flutter/material.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  _OtpVerificationScreenState createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _otpController1 = TextEditingController();
  final TextEditingController _otpController2 = TextEditingController();
  final TextEditingController _otpController3 = TextEditingController();
  final TextEditingController _otpController4 = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return const BottomSheetContent();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbgColor,
        leading: const Icon(Icons.arrow_back),
        centerTitle: true,
        title: const Text(
          'OTP Verification',
          style: textfieldheadingStyle,
        ),
      ),
      body: Scaffold(
        backgroundColor: appbgColor,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.black12,
                radius: MediaQuery.of(context).size.width / 6,
                child: CircleAvatar(
                    backgroundColor: primeryColor,
                    radius: MediaQuery.of(context).size.width / 8,
                    child: Icon(
                      Icons.verified,
                      color: appbgColor,
                      size: MediaQuery.of(context).size.width / 10,
                    )),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              const Text(
                'We have to sent the verification code to',
                style: TextStyle(
                    color: Colors.black, fontFamily: "Al", fontSize: 14),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              const Text(
                'irshaddeveloper23@gmail.com',
                style: textfieldheadingStyle,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              Form(
                key: _formKey,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OtpTextField(controller: _otpController1),
                    OtpTextField(controller: _otpController2),
                    OtpTextField(controller: _otpController3),
                    OtpTextField(controller: _otpController4),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              ),
              AppButton(
                title: "Submit",
                ontap: () {
                  if (_formKey.currentState!.validate()) {
                    // Handle OTP verification
                    final otp = _otpController1.text +
                        _otpController2.text +
                        _otpController3.text +
                        _otpController4.text;
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('OTP entered: $otp')),
                    );
                  }
                  if (_formKey.currentState!.validate()) {
                    _showBottomSheet(context);
                  }
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Did't recieve the code ?",
                    style: apptextstyle,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 80,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      "Resend",
                      style: textfieldheadingStyle,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
