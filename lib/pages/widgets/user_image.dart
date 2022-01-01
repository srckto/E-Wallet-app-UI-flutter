import 'package:flutter/material.dart';

class UserImage extends StatelessWidget {
  final String imagePath;
  final double raduis;
  final Function()? onTap;
  const UserImage({required this.imagePath, required this.raduis, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(raduis),
        child: Image.asset(
          imagePath,
          height: raduis,
          width: raduis,
        ),
      ),
    );
  }
}
