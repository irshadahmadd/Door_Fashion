// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:door_fashion/Core/Constants/colors.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  // ignore: duplicate_ignore
  // ignore: prefer_typing_uninitialized_variables
  final onChanged;
  final validator;
  final hintText;
  final controller;
  final preFixIconn;
  bool obscureText;
  final prefixIconConstraints;
  final textInputAction;
  final keyBoardType;
  IconButton? suffixIcon;
  FocusNode? focusNode;
  Function(String)? onFieldSubmitted;

  CustomTextField({
    super.key,
    this.preFixIconn,
    this.suffixIcon,
    this.onChanged,
    this.controller,
    this.hintText,
    this.validator,
    this.obscureText = false,
    this.textInputAction,
    this.keyBoardType,
    this.focusNode,
    this.onFieldSubmitted,
    EdgeInsets? contentPadding,
    this.prefixIconConstraints,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // color: Colors.amberAccent,
      width: MediaQuery.of(context).size.width / 1.4,
      child: TextFormField(
          textInputAction: TextInputAction.next,
          onChanged: onChanged,
          validator: validator,
          controller: controller,
          obscureText: obscureText,
          style: const TextStyle(
              fontSize: 16, color: Colors.black, fontWeight: FontWeight.w400),
          onFieldSubmitted: onFieldSubmitted,
          focusNode: focusNode,
          obscuringCharacter: "*",
          cursorColor: primeryColor,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              fontSize: 15.0,
              color: Colors.black,
            ),
            fillColor: textfieldColor,
            suffixIcon: suffixIcon,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            focusedErrorBorder: InputBorder.none,
          )),
    );
  }
}
