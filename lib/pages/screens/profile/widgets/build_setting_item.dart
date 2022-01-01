import 'package:flutter/material.dart';

class BuildSettingItem extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imagePath;
  final Function()? onTap;
  const BuildSettingItem({
    Key? key,
    required this.title,
    required this.subTitle,
    required this.imagePath,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
          ),
          SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16),
                ),
                SizedBox(height: 10),
                Text(
                  subTitle,
                  style: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 14),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
