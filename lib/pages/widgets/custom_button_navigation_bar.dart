import 'package:flutter/material.dart';

import 'package:e_wallet_mobile_app/pages/widgets/custom_elevated_button.dart';

class CustomButtonNavigationBar extends StatelessWidget {
  final Color color;
  final String label;
  final String? imagePath;
  final Function()? onPress;
  const CustomButtonNavigationBar({
    Key? key,
    required this.color,
    required this.label,
    this.imagePath,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 15,
            offset: Offset(0, -10),
          ),
        ],
      ),
      child: CustomElevatedButton(
        onPressed: onPress,
        elevation: 0.0,
        color: color,
        imageIconPath: imagePath,
        label: label,
      ),
    );
  }
}


   // showDialog(
          //   context: context,
          //   builder: (ctx) => CustomAlertSuccessPayment(
          //     message: "The amount has been sent successfully!",
          //   ),
          // );