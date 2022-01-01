import 'package:e_wallet_mobile_app/pages/widgets/custom_button_navigation_bar.dart';
import 'package:e_wallet_mobile_app/pages/widgets/custom_textField.dart';
import 'package:e_wallet_mobile_app/pages/widgets/user_image.dart';
import 'package:e_wallet_mobile_app/styles/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);
  final TextEditingController _userTextEditingController = TextEditingController();
  final TextEditingController _emailTextEditingController = TextEditingController();
  final TextEditingController _phoneNumberTextEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  "My Info",
                  style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                UserImage(imagePath: k_imagePath, raduis: 100),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Upload Image",
                    style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 14),
                  ),
                ),
                SizedBox(height: 20),
                CustomTextField(
                  title: "User Name",
                  hint: "Enter your user name",
                  textEditingController: _userTextEditingController,
                ),
                SizedBox(height: 20),
                CustomTextField(
                  title: "Email",
                  hint: "Enter your e-mail",
                  textEditingController: _emailTextEditingController,
                ),
                SizedBox(height: 20),
                CustomTextField(
                  title: "Phone Number",
                  hint: "Enter your phone number",
                  textEditingController: _phoneNumberTextEditingController,
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomButtonNavigationBar(
          color: k_blue,
          label: "Save Changes",
          onPress: () {},
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(top: 15),
          child: IconButton(
            onPressed: () => Get.back(),
            icon: Icon(Icons.close, color: Colors.black),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      ),
    );
  }
}
