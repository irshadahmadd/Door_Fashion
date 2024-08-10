import 'package:door_fashion/Core/Constants/colors.dart';
import 'package:door_fashion/Core/Constants/textstyles.dart';
import 'package:door_fashion/UI/Custom-Widgets/app_button.dart';
import 'package:door_fashion/UI/Custom-Widgets/customtextfield.dart';
import 'package:door_fashion/UI/Custom-Widgets/textfieldcontainer.dart';
import 'package:door_fashion/UI/Screens/Auth_Screens/OTP/otpscren.dart';
import 'package:door_fashion/UI/Screens/Auth_Screens/SignUp/signuprovider.dart';
import 'package:door_fashion/UI/Screens/Home/main_home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Createaccount extends StatefulWidget {
  const Createaccount({super.key});

  @override
  State<Createaccount> createState() => _CreateaccountState();
}

class _CreateaccountState extends State<Createaccount> {
  TextEditingController username = TextEditingController();
  TextEditingController emailPhone = TextEditingController();
  TextEditingController password = TextEditingController();

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignUpProvider(),
      child: Consumer<SignUpProvider>(
        builder: (context, model, child) {
          return Scaffold(
            body: Container(
              decoration: const BoxDecoration(color: appbgColor),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width / 20,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: MediaQuery.of(context).size.width / 9),
                      const Text(
                        "Create Account",
                        style: headingStyle,
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width / 25),
                      const Text(
                        "Start shopping after creating your account",
                        style: apptextstyle,
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width / 200),
                      Form(
                        key: _formkey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 30,
                            ),
                            const Text(
                              "Username",
                              style: textfieldheadingStyle,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 100,
                            ),
                            TextFieldContainer(
                              icon: const Icon(Icons.person),
                              textfield: CustomTextField(
                                controller: username,
                                hintText: "Username",
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter your username";
                                  }
                                  if (value.contains("@") ||
                                      value.contains(".") ||
                                      value.contains("-")) {
                                    return "Username should not contain '@', '.' or '-'";
                                  }
                                  return null;
                                },
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 30,
                            ),
                            const Text(
                              "Email or Phone",
                              style: textfieldheadingStyle,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 100,
                            ),
                            TextFieldContainer(
                              icon: const Icon(Icons.email),
                              textfield: CustomTextField(
                                controller: emailPhone,
                                hintText: "Email or Phone",
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
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 30,
                            ),
                            const Text(
                              "Password",
                              style: textfieldheadingStyle,
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 100,
                            ),
                            TextFieldContainer(
                              icon: model.isVisiblePassword
                                  ? InkWell(
                                      onTap: () {
                                        model.visiblePassword();
                                      },
                                      child: const Icon(
                                        Icons.visibility,
                                        color: Color(0xFF568C48),
                                      ),
                                    )
                                  : InkWell(
                                      onTap: () {
                                        model.visiblePassword();
                                      },
                                      child: const Icon(
                                        Icons.visibility_off,
                                        color: Color(0xFF568C48),
                                      ),
                                    ),
                              textfield: CustomTextField(
                                obscureText: model.isVisiblePassword,
                                controller: password,
                                hintText: "Password",
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return "Please enter a password";
                                  }
                                  if (value.length < 6) {
                                    return "Password must be at least 6 characters";
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width / 10),
                      AppButton(
                        title: "Sign Up",
                        ontap: () {
                          if (_formkey.currentState!.validate() == true) {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const OtpVerificationScreen(),
                              ),
                            );
                          }
                        },
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width / 10),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const MainHome(),
                            ),
                          );
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height / 15,
                          width: MediaQuery.of(context).size.width / 1.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.black12,
                          ),
                          child: Row(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 15,
                              ),
                              Image(
                                image: const AssetImage(
                                  "assets/google.png",
                                ),
                                width: MediaQuery.of(context).size.width / 10,
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width / 10,
                              ),
                              const Text(
                                "Sign Up with Google",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.width / 10),
                      Container(
                        height: MediaQuery.of(context).size.height / 15,
                        width: MediaQuery.of(context).size.width / 1.1,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.black12,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 15,
                            ),
                            Image(
                              image: const AssetImage(
                                "assets/facebook.png",
                              ),
                              width: MediaQuery.of(context).size.width / 9,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 10,
                            ),
                            const Text(
                              "Sign Up with Facebook",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
