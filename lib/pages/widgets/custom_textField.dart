import 'package:flutter/material.dart';

import 'package:e_wallet_mobile_app/styles/constant.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String hint;
  final TextEditingController textEditingController;
  const CustomTextField({
    Key? key,
    required this.title,
    required this.hint,
    required this.textEditingController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline2,
        ),
        SizedBox(height: 10),
        TextFormField(
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: Theme.of(context).textTheme.headline3!.copyWith(fontSize: 14),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: k_greyBorder,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(
                color: k_greyBorder,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
