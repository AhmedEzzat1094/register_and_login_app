String? emailOrUsernameValidate(String? inputEmail) {
  final RegExp emailRegex = RegExp(
      r"^((?=.*[a-zA-Z])[a-zA-Z0-9._]{3,16}|[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,})$");

  if (inputEmail!.isEmpty) {
    return "Email/Username is required";
  }
  if (!emailRegex.hasMatch(inputEmail)) {
    return "Invalid email/username";
  }
  return null;
}

String? passwordValidate(String? inputPassword) {
  RegExp passwordRegex =
      RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])');
  if (inputPassword!.isEmpty) {
    return "Password required";
  }
  if (inputPassword.length < 8) {
    return "Password must be contains 8 or more characters";
  }
  if (!passwordRegex.hasMatch(inputPassword)) {
    return "Password must be contains lower case, upper case,\n numbers and special characters";
  }
  return null;
}

String? courseValidate(String? inputCourse) {
  if (inputCourse!.isEmpty) return "Course is requierd";
  return null;
}
