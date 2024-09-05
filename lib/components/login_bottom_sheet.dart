import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "../components/switcher_state.dart";
import "../components/app_material_button.dart";
import "../components/custom_bottom_sheet.dart";
import "../components/header_list_tile.dart";
import "../style/app_style.dart";
import "../tools/validate_functions.dart";
import "../components/app_text_feild.dart";
import "../components/register_bottom_sheet.dart";

import "../style/app_colors.dart";

class LoginBottomSheet extends StatefulWidget {
  const LoginBottomSheet({super.key});

  @override
  State<LoginBottomSheet> createState() => _LoginBottomSheetState();
}

class _LoginBottomSheetState extends State<LoginBottomSheet> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  bool secureEmail = false;
  bool securePass = true;
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      formKey: _formKey,
      width: 375,
      height: 440,
      children: [
        const HeaderListTile(title: "Welcome back!!!", subtitle: "Login"),
        const SizedBox(
          height: 15,
        ),
        AppTextFeild(
          isSecure: secureEmail,
          labelText: "username/email",
          suffixIcon: IconButton(
            onPressed: () {
              secureEmail = !secureEmail;
              setState(() {});
            },
            icon: secureEmail
                ? const Icon(Icons.visibility_off_outlined)
                : SvgPicture.asset("assets/images/svg/Eye.svg"),
          ),
          validate: emailOrUsernameValidate,
        ),
        const SizedBox(
          height: 15,
        ),
        AppTextFeild(
          isSecure: securePass,
          labelText: "password",
          suffixIcon: IconButton(
            onPressed: () {
              securePass = !securePass;
              setState(() {});
            },
            icon: securePass
                ? SvgPicture.asset("assets/images/svg/Lock.svg")
                : const Icon(Icons.lock_open),
          ),
          validate: passwordValidate,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Checkbox(
                  activeColor: AppColor.darkIndigo,
                  value: rememberMe,
                  onChanged: (val) {
                    rememberMe = val!;
                    setState(() {});
                  },
                ),
                const Text(
                  "Remember me",
                  style: AppStyle.rememberMeTextStyle,
                ),
              ],
            ),
            InkWell(
              onTap: () {},
              child: const Text(
                "Forget password?",
                style: AppStyle.forgetPassTextStyle,
              ),
            ),
          ],
        ),
        AppMaterialButton(
            width: 340,
            height: 60,
            text: "Login",
            buttonColor: AppColor.darkIndigo,
            textColor: AppColor.jasmineYellow,
            onPressed: () {
              _formKey.currentState!.validate();
            }),
        const SizedBox(
          height: 15,
        ),
        const SwitcherState(
            swicherMessage: "Don’t have an account?",
            buttonText: "Register",
            widget: RegisterBottomSheet())
      ],
    );
  }
}
