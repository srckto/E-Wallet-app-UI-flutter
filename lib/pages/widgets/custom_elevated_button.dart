import 'package:flutter/material.dart';

import 'package:e_wallet_mobile_app/styles/constant.dart';

class CustomElevatedButton extends StatelessWidget {
  final String label;
  final String? imageIconPath;
  final Color color;
  final double? elevation;
  final Function()? onPressed;
  const CustomElevatedButton({
    Key? key,
    required this.label,
    this.imageIconPath,
    required this.color,
    this.elevation,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (color == k_yellow) {
      return Container(
        width: 150,
        height: 50,
        child: ElevatedButton.icon(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            primary: color,
            textStyle: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 15,
                ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          icon: imageIconPath != null
              ? Image.asset(
                  imageIconPath!,
                  color: Colors.black,
                )
              : Container(),
          label: Text(
            label,
            style: TextStyle(color: Colors.black),
          ),
        ),
      );
    } else if (color == k_blue) {
      return Container(
        width: 150,
        height: 50,
        child: ElevatedButton.icon(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            elevation: elevation,
            primary: color,
            textStyle: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 15,
                ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          icon: imageIconPath != null
              ? Image.asset(
                  imageIconPath!,
                  color: Colors.white,
                )
              : Container(),
          label: Text(
            label,
            style: TextStyle(color: Colors.white),
          ),
        ),
      );
    } else {
      return Container(
        width: 150,
        height: 50,
        child: ElevatedButton.icon(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.zero,
            elevation: elevation,
            primary: color,
            textStyle: Theme.of(context).textTheme.headline1!.copyWith(
                  fontSize: 15,
                ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          icon: imageIconPath != null
              ? Image.asset(
                  imageIconPath!,
                  color: Colors.white,
                )
              : Container(),
          label: Text(
            label,
            style: TextStyle(color: k_black),
          ),
        ),
      );
    }
  }
}
