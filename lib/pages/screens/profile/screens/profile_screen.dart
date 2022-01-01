import 'package:e_wallet_mobile_app/modul/user_model.dart';
import 'package:e_wallet_mobile_app/pages/screens/profile/screens/edit_profile_screen.dart';
import 'package:e_wallet_mobile_app/pages/screens/profile/screens/my_cards_screen.dart';
import 'package:e_wallet_mobile_app/pages/screens/profile/screens/settings_screen.dart';
import 'package:e_wallet_mobile_app/pages/widgets/user_image.dart';
import 'package:e_wallet_mobile_app/styles/constant.dart';
import 'package:e_wallet_mobile_app/styles/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/build_profile_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
              backgroundColor: k_grey,
              title: Text(
                "My Profile",
                style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 22),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () => Get.to(() => EditProfileScreen()),
                  icon: Image.asset(
                    "assets/images/edit_icon.png",
                    color: k_blue,
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
            Container(
              width: SizeConfig.screenWidth,
              color: k_grey,
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  UserImage(imagePath: k_imagePath, raduis: 130),
                  SizedBox(height: 15),
                  Text(
                    mainUser.name,
                    style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 18),
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  BuildProfileItem(
                    context: context,
                    iconPath: "assets/images/profile_icon.png",
                    title: "My Profile",
                    onTap: () {},
                  ),
                  SizedBox(height: 20),
                  BuildProfileItem(
                    context: context,
                    iconPath: "assets/images/card_icon.png",
                    title: "My Cards",
                    onTap: () => Get.to(() => MyCardsScreen()),
                  ),
                  SizedBox(height: 20),
                  BuildProfileItem(
                    context: context,
                    iconPath: "assets/images/settings_icon.png",
                    title: "Settings",
                    onTap: () => Get.to(() => SettingScreen()),
                  ),
                  SizedBox(height: 20),
                  BuildProfileItem(
                    context: context,
                    iconPath: "assets/images/help_icon.png",
                    title: "Help Center",
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
