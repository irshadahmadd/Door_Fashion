import 'package:door_fashion/Core/Constants/colors.dart';
import 'package:door_fashion/Core/Constants/textstyles.dart';
import 'package:door_fashion/UI/Custom-Widgets/app_button.dart';
import 'package:door_fashion/UI/Custom-Widgets/customtextfield.dart';
import 'package:door_fashion/UI/Custom-Widgets/textfieldcontainer.dart';
import 'package:door_fashion/UI/Screens/Auth_Screens/SignIN/signin_provider.dart';
import 'package:door_fashion/UI/Screens/Home/main_home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class ForgotPassPopup extends StatelessWidget {
  ForgotPassPopup({super.key});
  TextEditingController createPass = TextEditingController();
  TextEditingController newPass = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SigninProvider(),
      child: Consumer<SigninProvider>(
        builder: (context, model, child) {
          return Container(
            width: MediaQuery.of(context).size.width / 1,
            height: MediaQuery.of(context).size.height / 1.8,
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
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 20,
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Create New Password",
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
                    horizontal: MediaQuery.of(context).size.width / 20,
                  ),
                  child: const Row(
                    children: [
                      Text(
                        "Enter new password of your choice",
                        style: apptextstyle,
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
                    horizontal: MediaQuery.of(context).size.width / 20,
                  ),
                  child: const Row(
                    children: [
                      Text(
                        "Password",
                        style: textfieldheadingStyle,
                      ),
                      SizedBox(),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 50,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
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
                          controller: createPass,
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
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 20,
                        ),
                        child: const Row(
                          children: [
                            Text(
                              "Password",
                              style: textfieldheadingStyle,
                            ),
                            SizedBox(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 50,
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
                          controller: newPass,
                          hintText: "Password",
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter a password";
                            }
                            if (value.length < 6) {
                              return "Password must be at least 6 characters";
                            }
                            if (createPass.text != newPass.text) {
                              return "Passwords didn't match";
                            }
                            return null;
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 30,
                ),
                AppButton(
                  title: "Change Password",
                  ontap: () {
                    // if (_formKey.currentState!.validate()) {
                    //   FocusScope.of(context).unfocus(); // Hide the keyboard
                    //   Future.delayed(const Duration(seconds: 300), () {});
                    // }
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainHome(),
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
