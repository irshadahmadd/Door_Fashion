import 'package:door_fashion/Core/Constants/colors.dart';
import 'package:door_fashion/Core/Constants/textstyles.dart';
import 'package:door_fashion/UI/Custom-Widgets/app_button.dart';
import 'package:door_fashion/UI/Custom-Widgets/customtextfield.dart';
import 'package:door_fashion/UI/Custom-Widgets/textfieldcontainer.dart';
import 'package:door_fashion/UI/Screens/Auth_Screens/ForgotPassword/forgot_pass_popup.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ForgotPassEmailpop extends StatelessWidget {
  ForgotPassEmailpop({super.key});
  TextEditingController emailPhone = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  void _showPassowrdBottomSheet(BuildContext context) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return ForgotPassPopup();
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 1,
      height: MediaQuery.of(context).size.height / 2.3,
      decoration: const BoxDecoration(
        color: appbgColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
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
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(2)),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 20),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Forgot Password",
                    style: textfieldheadingStyle,
                  ),
                  SizedBox(),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 20),
              child: const Row(
                children: [
                  Text(
                    "Enter your email or phone",
                    style: apptextstyle,
                  ),
                  SizedBox()
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 20),
              child: const Row(
                children: [
                  Text(
                    "Email or phone",
                    style: textfieldheadingStyle,
                  ),
                  SizedBox()
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Form(
              key: _formKey,
              child: TextFieldContainer(
                icon: const Icon(Icons.email),
                textfield: CustomTextField(
                  controller: emailPhone,
                  hintText: "Email or Phone",
                  suffixIcon: IconButton(
                    icon: const Icon(
                      Icons.verified,
                      color: Colors.green,
                    ),
                    onPressed: () {},
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter your email or phone number";
                    }
                    if (!value.contains("@")) {
                      return "Please enter a valid email";
                    }
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 30,
            ),
            AppButton(
                title: "Send Code",
                ontap: () {
                  _showPassowrdBottomSheet(context);
                  // Navigator.pushReplacement(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => SignInScreen(),
                  //   ),
                  // );
                })
          ],
        ),
      ),
    );
  }
}
