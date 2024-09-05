import 'package:flutter/material.dart';
import '../style/app_style.dart';


class AppOutlineButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final void Function() onPressed;

  const AppOutlineButton(
      {super.key,
      required this.width,
      required this.height,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: OutlinedButton(
        onPressed: onPressed,
        style: AppStyle.outlineButtonStyle,
        child: Text(
          text,
          style: AppStyle.outlineButtonTextStyle,
        ),
      ),
    );
  }
}
