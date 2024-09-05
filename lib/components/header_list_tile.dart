import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../style/app_colors.dart';

class HeaderListTile extends StatelessWidget {
  final String title;
  final String subtitle;
  const HeaderListTile({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(
        left: 4,
      ),
      title:  Text(
        title,
        style:const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: AppColor.darkIndigo),
      ),
      subtitle:  Text(
        subtitle,
        style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: AppColor.darkIndigo),
      ),
      trailing: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: SvgPicture.asset("assets/images/svg/Close.svg"),
      ),
    );
  }
}
