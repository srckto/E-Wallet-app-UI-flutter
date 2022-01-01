import 'package:e_wallet_mobile_app/styles/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:e_wallet_mobile_app/styles/size_config.dart';

class CustomAlertSuccessPayment extends StatelessWidget {
  final String message;
  const CustomAlertSuccessPayment({
    Key? key,
    required this.message,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/sent_illustration.png"),
          SizedBox(height: 20),
          Text(
            message,
            style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 25),
          Container(
            width: SizeConfig.screenWidth,
            height: 50,
            child: ElevatedButton(
              onPressed: () => Get.back(),
              style: ElevatedButton.styleFrom(
                primary: k_blue,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              ),
              child: Text(
                "Ok, Thanks!",
                style: Theme.of(context).textTheme.headline1!.copyWith(
                      fontSize: 16,
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
