import 'package:flutter/material.dart';

import '../style/app_style.dart';
import '../tools/bottom_sheet_up_functon.dart';

class SwitcherState extends StatelessWidget {
  final String swicherMessage;
  final String buttonText;
  final Widget widget;
  const SwitcherState(
      {super.key,
      required this.swicherMessage,
      required this.buttonText,
      required this.widget});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          swicherMessage,
          style: AppStyle.switchLoginOrSignInStateTextStyle,
        ),
        const SizedBox(
          width: 5,
        ),
        InkWell(
          onTap: () {
            Navigator.pop(context);
            bottomSheetUp(context, widget);
          },
          child: Text(buttonText, style: AppStyle.inkWellButtonTextStyle),
        )
      ],
    );
  }
}
