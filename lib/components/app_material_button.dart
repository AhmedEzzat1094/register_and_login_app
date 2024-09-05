import 'package:flutter/material.dart';

class AppMaterialButton extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final Color textColor;
  final Color buttonColor;
  final void Function() onPressed;
  const AppMaterialButton(
      {super.key,
      required this.width,
      required this.height,
      required this.text,
      required this.onPressed, required this.textColor, required this.buttonColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: MaterialButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: buttonColor,
        onPressed: onPressed,
        child: Text(
          text,
          style:  TextStyle(
              color: textColor,
              fontWeight: FontWeight.w600,
              fontSize: 20),
        ),
      ),
    );
  }
}
