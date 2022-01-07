import 'package:e_wallet_mobile_app/models/user_model.dart';
import 'package:e_wallet_mobile_app/pages/screens/home/widgets/build_user_request_item.dart';
import 'package:e_wallet_mobile_app/pages/widgets/custom_button_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:e_wallet_mobile_app/styles/constant.dart';
import 'package:e_wallet_mobile_app/styles/size_config.dart';

class RequestsScreen extends StatelessWidget {
  const RequestsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Requests",
            style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 20),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new, color: k_black),
            onPressed: () => Get.back(),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: SizeConfig.screenWidth,
                  height: 50,
                  decoration: BoxDecoration(
                    color: k_grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: RichText(
                    text: TextSpan(
                      text: "Total Amount: ",
                      style: Theme.of(context).textTheme.headline2,
                      children: const <TextSpan>[
                        TextSpan(
                          text: "\$105.5",
                          style: TextStyle(
                            color: k_yellow,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Text("October, 2020"),
                SizedBox(height: 15),
                ListView.separated(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: usersRequests.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(height: 10);
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return BuildUserRequestItem(user: usersRequests[index]);
                  },
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomButtonNavigationBar(
          color: k_yellow,
          label: "Send All Payment",
          imagePath: "assets/images/send_icon.png",
          onPress: () {},
        ),
      ),
    );
  }
}
