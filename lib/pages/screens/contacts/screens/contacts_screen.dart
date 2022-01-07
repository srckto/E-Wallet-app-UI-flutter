import 'package:e_wallet_mobile_app/models/user_model.dart';
import 'package:e_wallet_mobile_app/styles/constant.dart';
import 'package:flutter/material.dart';

import '../widgets/contact_item.dart';

class ContactsScreen extends StatelessWidget {
  ContactsScreen({Key? key}) : super(key: key);
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBar(
           
              title: Text(
                "Contacts",
                style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 22),
              ),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    "assets/images/search_icon.png",
                    color: k_blue,
                  ),
                ),
                SizedBox(width: 10),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: k_fontGrey),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: TextFormField(
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        hintText: "Enter a name",
                        border: InputBorder.none,
                        prefixIcon: Image.asset("assets/images/search_icon.png", color: k_fontGrey),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 15),
              child: ListView.separated(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: usersList.length,
                separatorBuilder: (BuildContext context, int index) {
                  return SizedBox(height: 15);
                },
                itemBuilder: (BuildContext context, int index) {
                  return BuildContactItem(user: usersList[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
