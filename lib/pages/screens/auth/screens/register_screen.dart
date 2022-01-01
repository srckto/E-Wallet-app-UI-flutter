import 'package:e_wallet_mobile_app/pages/screens/auth/screens/login_screen.dart';
import 'package:e_wallet_mobile_app/pages/screens/e-wallet_layout/e-wallet_layout_screen.dart';
import 'package:e_wallet_mobile_app/pages/widgets/custom_elevated_button.dart';
import 'package:e_wallet_mobile_app/pages/widgets/custom_textField.dart';
import 'package:e_wallet_mobile_app/styles/constant.dart';
import 'package:e_wallet_mobile_app/styles/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({Key? key}) : super(key: key);
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _reTryPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 30),
              Text(
                "Signup and start transfering",
                style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 32),
              ),
              SizedBox(height: 40),
              Row(
                children: [
                  Expanded(
                    child: CustomElevatedButton(
                      label: "Google",
                      color: k_grey,
                      elevation: 0.0,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(width: 30),
                  Expanded(
                    child: CustomElevatedButton(
                      label: "Facebook",
                      color: k_grey,
                      elevation: 0.0,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: 70),
              CustomTextField(
                title: "Email",
                hint: "Enter your email",
                textEditingController: _emailController,
              ),
              SizedBox(height: 30),
              CustomTextField(
                title: "Password",
                hint: "Enter your password",
                textEditingController: _passwordController,
              ),
              SizedBox(height: 30),
              CustomTextField(
                title: "Password",
                hint: "Enter your password again",
                textEditingController: _reTryPasswordController,
              ),
              SizedBox(height: 30),
              Container(
                width: SizeConfig.screenWidth * 0.75,
                child: CustomElevatedButton(
                  label: "Create an account",
                  color: k_blue,
                  onPressed: () => Get.off(() => E_WalletLayoutScreen()),
                ),
              ),
              SizedBox(height: 7),
              TextButton(
                onPressed: () => Get.off(() => LoginScreen()),
                child: Text(
                  "Already have an account?",
                  style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
