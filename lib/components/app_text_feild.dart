import 'package:flutter/material.dart';

import '../style/app_colors.dart';

class AppTextFeild extends StatelessWidget {
  final bool isSecure;
  final String labelText;
  final Widget suffixIcon;
  final TextEditingController? controller;
  final String? Function(String?)? validate;
  const AppTextFeild(
      {super.key,
      this.isSecure = false,
      required this.labelText,
      required this.suffixIcon,
      this.controller,
      this.validate});

  InputBorder borderStyle(double width,Color color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide:  BorderSide(
        width: width,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validate,
      obscureText: isSecure,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: const TextStyle(
            color: AppColor.darkIndigo,
            fontSize: 15,
            fontWeight: FontWeight.w400),
        focusedBorder: borderStyle(2, AppColor.darkIndigo),
        
        enabledBorder:borderStyle(1, AppColor.darkIndigo),
        errorBorder: borderStyle(2, AppColor.red),
        focusedErrorBorder: borderStyle(2, AppColor.red),
        suffixIcon: suffixIcon,
      ),
    );
  }
}
