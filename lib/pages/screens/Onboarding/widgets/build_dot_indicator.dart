

import 'package:e_wallet_mobile_app/styles/constant.dart';
import 'package:flutter/material.dart';

class BuildDotIndicator extends StatelessWidget {
  final int currentIndex;
  final int position;

  const BuildDotIndicator({
    Key? key,
    required this.position,
    required this.currentIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Container(
        width: 20,
        height: 5,
        decoration: BoxDecoration(
          color: currentIndex == position ? k_blue : k_grey,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
