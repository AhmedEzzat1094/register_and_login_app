import "package:flutter/material.dart";
import "package:flutter_svg/svg.dart";
import "../components/app_material_button.dart";
import "../components/header_list_tile.dart";
import "../components/switcher_state.dart";
import "../components/app_text_feild.dart";
import "../components/login_bottom_sheet.dart";
import "../tools/validate_functions.dart";
import "../style/app_colors.dart";
import "custom_bottom_sheet.dart";

class RegisterBottomSheet extends StatefulWidget {
  const RegisterBottomSheet({super.key});

  @override
  State<RegisterBottomSheet> createState() => _RegisterBottomSheetState();
}

class _RegisterBottomSheetState extends State<RegisterBottomSheet> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController passController = TextEditingController();
  bool secureEmail = false;
  bool secureCourse = false;
  bool lockPass = true;
  bool lockConfirmPass = true;

  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      formKey: _formKey,
      width: 375,
      height: 510,
      children: [
        const HeaderListTile(title: "Hello...", subtitle: "Register"),
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
                  : SvgPicture.asset("assets/images/svg/Eye.svg")),
          validate: emailOrUsernameValidate,
        ),
        const SizedBox(
          height: 12,
        ),
        AppTextFeild(
          isSecure: secureCourse,
          labelText: "course",
          suffixIcon: IconButton(
            onPressed: () {
              secureCourse = !secureCourse;
              setState(() {});
            },
            icon: secureCourse
                ? const Icon(Icons.visibility_off_outlined)
                : SvgPicture.asset("assets/images/svg/Eye.svg"),
          ),
          validate: courseValidate,
        ),
        const SizedBox(
          height: 12,
        ),
        AppTextFeild(
          isSecure: lockPass,
          controller: passController,
          labelText: "password",
          suffixIcon: IconButton(
            onPressed: () {
              lockPass = !lockPass;
              setState(() {});
            },
            icon: lockPass
                ? SvgPicture.asset("assets/images/svg/Lock.svg")
                : const Icon(Icons.lock_open_outlined),
          ),
          validate: passwordValidate,
        ),
        const SizedBox(
          height: 12,
        ),
        AppTextFeild(
          isSecure: lockConfirmPass,
          labelText: "confirm password",
          suffixIcon: IconButton(
            onPressed: () {
              lockConfirmPass = !lockConfirmPass;
              setState(() {});
            },
            icon: lockConfirmPass
                ? SvgPicture.asset("assets/images/svg/Lock.svg")
                : const Icon(Icons.lock_open_outlined),
          ),
          validate: (confirmPass) {
            if (confirmPass!.isEmpty) {
              return "Confirm password is required";
            }
            if (confirmPass != passController.text) {
              return "Password not match";
            }
            return null;
          },
        ),
        const SizedBox(
          height: 15,
        ),
        AppMaterialButton(
          width: 340,
          height: 60,
          text: "Register",
          textColor: AppColor.jasmineYellow,
          buttonColor: AppColor.darkIndigo,
          onPressed: () {
            _formKey.currentState!.validate();
          },
        ),
        const SizedBox(
          height: 10,
        ),
        const SwitcherState(
            swicherMessage: "Already have account?",
            buttonText: "Login",
            widget: LoginBottomSheet()),
      ],
    );
  }
}
