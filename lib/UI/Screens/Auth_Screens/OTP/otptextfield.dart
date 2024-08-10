import 'package:door_fashion/Core/Constants/colors.dart';
import 'package:flutter/material.dart';

class OtpTextField extends StatelessWidget {
  final TextEditingController controller;

  // ignore: use_key_in_widget_constructors
  const OtpTextField({required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 7.5,
      child: TextFormField(
        controller: controller,
        keyboardType: TextInputType.number,
        maxLength: 1,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          counterText: '', // Hides the character counter
          border: OutlineInputBorder(
              borderSide:
                  BorderSide(width: MediaQuery.of(context).size.width / 200),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
          focusedBorder: OutlineInputBorder(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
                color: primeryColor,
                width: MediaQuery.of(context).size.width / 200),
          ),
        ),
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Required';
          }
          return null;
        },
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }
}
