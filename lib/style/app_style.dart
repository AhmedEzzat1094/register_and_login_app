import "package:flutter/material.dart";

import "app_colors.dart";

class AppStyle {
  static const welcomeStyle = TextStyle(
      color: AppColor.lightCoralColor,
      fontSize: 36,
      fontWeight: FontWeight.w400);

  static const mainScreenTextStyle = TextStyle(
      color: AppColor.whiteSmoke, fontSize: 20, fontWeight: FontWeight.w300);
  static const rightReservedStyle = TextStyle(
      color: AppColor.jasmineYellow, fontSize: 11, fontWeight: FontWeight.w400);
  static const outlineButtonTextStyle = TextStyle(
      color: AppColor.jasmineYellow, fontSize: 20, fontWeight: FontWeight.w600);
  static var outlineButtonStyle = OutlinedButton.styleFrom(
    side: const BorderSide(
      color: AppColor.jasmineYellow,
      width: 3,
    ),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
  );
  static const switchLoginOrSignInStateTextStyle =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w400);
  static const inkWellButtonTextStyle = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: AppColor.lightCoralColor);
  static const rememberMeTextStyle = TextStyle(
      color: AppColor.darkIndigo, fontSize: 12, fontWeight: FontWeight.w400);
  static const forgetPassTextStyle = TextStyle(
      color: AppColor.darkIndigo, fontSize: 12, fontWeight: FontWeight.w400);
}
