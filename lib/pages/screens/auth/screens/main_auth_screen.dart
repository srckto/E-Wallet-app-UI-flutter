import 'package:e_wallet_mobile_app/pages/screens/auth/screens/login_screen.dart';
import 'package:e_wallet_mobile_app/pages/screens/auth/screens/register_screen.dart';
import 'package:e_wallet_mobile_app/pages/screens/auth/widgets/curve_painter.dart';
import 'package:e_wallet_mobile_app/pages/widgets/custom_elevated_button.dart';
import 'package:e_wallet_mobile_app/styles/constant.dart';
import 'package:e_wallet_mobile_app/styles/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainAuthScreen extends StatelessWidget {
  const MainAuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight * 0.7,
              child: Stack(
                children: [
                  Container(
                    width: SizeConfig.screenWidth,
                    height: double.infinity,
                    child: CustomPaint(
                      foregroundPainter: CurvePainter(
                        rightHeight: 0.87,
                        leftHeight: 0.8,
                        color: k_grey,
                      ),
                    ),
                  ),
                  Container(
                    width: SizeConfig.screenWidth,
                    height: double.infinity,
                    child: CustomPaint(
                      foregroundPainter: CurvePainter(
                        rightHeight: 0.78,
                        leftHeight: 0.8,
                        color: k_blue,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/Icon.png"),
                        SizedBox(height: 10),
                        Text(
                          "PayNow",
                          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 30),
                        ),
                        SizedBox(height: 50),
                        Text(
                          "The Best Way to Transfer Money Safely",
                          style: Theme.of(context).textTheme.headline1!.copyWith(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              width: SizeConfig.screenWidth * 0.75,
              child: CustomElevatedButton(
                label: "Create new account",
                color: k_blue,
                onPressed: () => Get.off(() => RegisterScreen()),
              ),
            ),
            SizedBox(height: 7),
            TextButton(
              onPressed: () => Get.off(() => LoginScreen()),
              child: Text(
                "Already have account?",
                style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 14),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
