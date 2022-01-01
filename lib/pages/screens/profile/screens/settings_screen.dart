import 'package:e_wallet_mobile_app/pages/screens/profile/widgets/build_setting_item.dart';
import 'package:e_wallet_mobile_app/styles/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: k_black),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "Settings",
          style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "General",
                style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 15),
              ),
              SizedBox(height: 20),
              BuildSettingItem(
                title: "Language",
                subTitle: "Change the language of the app.",
                imagePath: "assets/images/language_icon.png",
                onTap: () {},
              ),
              SizedBox(height: 25),
              BuildSettingItem(
                title: "Location",
                subTitle: "Add your home and work locations.",
                imagePath: "assets/images/location_icon.png",
                onTap: () {},
              ),
              SizedBox(height: 30),
              Text(
                "Notifications",
                style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 15),
              ),
              SizedBox(height: 20),
              BuildSettingItem(
                title: "Push notifications",
                subTitle: "For daily update and others.",
                imagePath: "assets/images/notifications _icon.png",
                onTap: () {},
              ),
              SizedBox(height: 25),
              BuildSettingItem(
                title: "Promotional notifications",
                subTitle: "New campain and offers.",
                imagePath: "assets/images/notifications _icon.png",
                onTap: () {},
              ),
              SizedBox(height: 30),
              Text(
                "More",
                style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 15),
              ),
              SizedBox(height: 20),
              BuildSettingItem(
                title: "Contact us",
                subTitle: "For more information",
                imagePath: "assets/images/call_icon.png",
                onTap: () {},
              ),
              SizedBox(height: 25),
              BuildSettingItem(
                title: "Logout",
                subTitle: "Logout from existing account",
                imagePath: "assets/images/logout_icon.png",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
