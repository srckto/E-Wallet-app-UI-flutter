import 'package:e_wallet_mobile_app/styles/constant.dart';
import 'package:flutter/material.dart';

class BuildProfileItem extends StatelessWidget {
  final String title;
  final String iconPath;
  final BuildContext context;
  final Function()? onTap;

  const BuildProfileItem({
    Key? key,
    required this.title,
    required this.iconPath,
    required this.context,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      tileColor: k_grey,
      leading: Image.asset(iconPath),
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline2,
      ),
      trailing: Image.asset("assets/images/arrow_icon.png"),
    );
  }
}
