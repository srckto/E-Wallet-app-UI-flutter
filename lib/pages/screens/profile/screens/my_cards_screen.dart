import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_wallet_mobile_app/modul/user_model.dart';
import 'package:e_wallet_mobile_app/pages/screens/profile/screens/add_new_card_screen.dart';
import 'package:e_wallet_mobile_app/pages/screens/profile/widgets/custom_alert_confirm_delete.dart';
import 'package:e_wallet_mobile_app/pages/widgets/custom_elevated_button.dart';
import 'package:e_wallet_mobile_app/pages/widgets/custom_textField.dart';
import 'package:e_wallet_mobile_app/styles/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyCardsScreen extends StatelessWidget {
  MyCardsScreen({Key? key}) : super(key: key);
  final TextEditingController _cardNameController = TextEditingController();
  final TextEditingController _cardNumberController = TextEditingController();
  final TextEditingController _cvvController = TextEditingController();
  final TextEditingController _expairyDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: k_black),
          onPressed: () => Get.back(),
        ),
        title: Text(
          "My Cards",
          style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 22),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => Get.to(() => AddNewCardScreen()),
            icon: Image.asset(
              "assets/images/add_icon.png",
              color: k_blue,
            ),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              items: imagesList
                  .map(
                    (element) => Image.asset(element),
                  )
                  .toList(),
              options: CarouselOptions(
                enableInfiniteScroll: false,
                autoPlay: false,
                enlargeCenterPage: false,
                viewportFraction: 0.79,
                aspectRatio: 2.0,
                initialPage: 1,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  CustomTextField(
                    title: "Cardholder Name",
                    hint: "Enter your name as written on card",
                    textEditingController: _cardNameController,
                  ),
                  SizedBox(height: 20),
                  CustomTextField(
                    title: "Card Number",
                    hint: "Enter card number",
                    textEditingController: _cardNumberController,
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: CustomTextField(
                          title: "cvv\\cvc",
                          hint: "123",
                          textEditingController: _cvvController,
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: CustomTextField(
                          title: "Exp. Date",
                          hint: "20\\20",
                          textEditingController: _expairyDateController,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
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
        child: Row(
          children: [
            Expanded(
              child: CustomElevatedButton(
                onPressed: () {},
                elevation: 0.0,
                color: k_blue,
                label: "Save Changes",
              ),
            ),
            SizedBox(width: 18),
            Container(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) =>
                        CustomAlertConfirmDelete(message: "Are you sure to remove this card?"),
                  );
                },
                child: Image.asset("assets/images/remove_icon.png"),
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.zero,
                  primary: Colors.red,
                  textStyle: Theme.of(context).textTheme.headline1!.copyWith(
                        fontSize: 15,
                      ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
