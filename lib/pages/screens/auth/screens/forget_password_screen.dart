import 'package:e_wallet_mobile_app/pages/widgets/custom_button_navigation_bar.dart';
import 'package:e_wallet_mobile_app/pages/widgets/custom_textField.dart';
import 'package:e_wallet_mobile_app/styles/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen extends StatelessWidget {
  ForgetPasswordScreen({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: k_black),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Reset Password",
          style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              "Enter your email to send instruction to reset your password",
              style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 16),
            ),
            SizedBox(height: 40),
            CustomTextField(
              title: "Email",
              hint: "Enter your email",
              textEditingController: _emailController,
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomButtonNavigationBar(
        color: k_blue,
        label: "Send Email",
        onPress: () {},
      ),
    );
  }
}
