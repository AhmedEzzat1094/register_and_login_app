import 'package:flutter/material.dart';

import '../style/app_colors.dart';

class CustomBottomSheet extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final double height;
  final double width;
  final List<Widget> children;

  const CustomBottomSheet(
      {super.key,
      required this.formKey,
      required this.height,
      required this.width,
      required this.children});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Container(
        decoration: const BoxDecoration(
          color: AppColor.lightCream,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(40),
            bottom: Radius.circular(5),
          ),
        ),
        width: width,
        height: height,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: children,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
