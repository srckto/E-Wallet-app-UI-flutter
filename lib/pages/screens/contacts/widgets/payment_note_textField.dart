import 'package:flutter/material.dart';

import 'package:e_wallet_mobile_app/styles/constant.dart';

class PaymentNoteTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  const PaymentNoteTextField({
    Key? key,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 35),
        Text("Payment Note", style: Theme.of(context).textTheme.headline2),
        SizedBox(height: 10),
        TextFormField(
          cursorColor: k_fontGrey,
          keyboardType: TextInputType.multiline,
          enableSuggestions: true,
          autocorrect: false,
          controller: textEditingController,
          maxLines: 7,
          decoration: InputDecoration(
            hintText: "Add payment note",
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: k_fontGrey.withOpacity(0.2),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: k_fontGrey.withOpacity(0.2),
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(
                color: k_fontGrey.withOpacity(0.2),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
