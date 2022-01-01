import 'package:e_wallet_mobile_app/pages/widgets/custom_button_navigation_bar.dart';
import 'package:e_wallet_mobile_app/pages/widgets/custom_textField.dart';
import 'package:e_wallet_mobile_app/styles/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNewCardScreen extends StatelessWidget {
  AddNewCardScreen({Key? key}) : super(key: key);

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
          "Add Card",
          style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 22),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
      bottomNavigationBar: CustomButtonNavigationBar(
        color: k_blue,
        label: "Submit Card",
        onPress: () {},
      ),
    );
  }
}
