import 'package:flutter/material.dart';

bottomSheetUp(context, Widget widget) {
  showModalBottomSheet(
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(45), bottom: Radius.circular(5)),
      ),
      context: context,
      builder: (context) {
        return widget;
      });
}
