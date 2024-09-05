import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "../components/app_material_button.dart";
import "../components/app_outline_button.dart";
import "../style/app_style.dart";
import "../tools/bottom_sheet_up_functon.dart";
import "../components/login_bottom_sheet.dart";
import "../components/register_bottom_sheet.dart";
import "../style/app_colors.dart";

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkIndigo,
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              "assets/images/svg/Illustration_Picture.svg",
              width: 374.57,
              height: 393.45,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Welcome",
              style: AppStyle.welcomeStyle,
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              "Lorem ipsum dolor sit amet,\n"
              "consectetur adipiscing elit, sed\n"
              "do eiusmod",
              style: AppStyle.mainScreenTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            AppMaterialButton(
                width: 281,
                height: 60,
                text: "Create Account",
                buttonColor: AppColor.jasmineYellow,
                textColor: AppColor.darkIndigo,
                onPressed: () {
                  bottomSheetUp(context, const RegisterBottomSheet());
                }),
            const SizedBox(
              height: 10,
            ),
            AppOutlineButton(
                width: 281,
                height: 60,
                text: "Login",
                onPressed: () {
                  bottomSheetUp(context, const LoginBottomSheet());
                }),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "All Right Reserved @2021",
              style: AppStyle.rightReservedStyle,
            ),
          ],
        ),
      ),
    );
  }
}
