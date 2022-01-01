import 'package:flutter/material.dart';

class PaymentAmountTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final double amount;
  final Color color;
  final String title;

  PaymentAmountTextField({
    Key? key,
    required this.textEditingController,
    required this.amount,
    required this.color,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10),
        Text(title, style: Theme.of(context).textTheme.headline2),
        SizedBox(height: 10),
        TextFormField(
          cursorColor: color,
          keyboardType: TextInputType.number,
          enableSuggestions: false,
          autocorrect: false,
          controller: textEditingController,
          maxLines: 1,
          decoration: InputDecoration(
            enabled: true,
            prefixIconColor: color,
            prefixIcon: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(width: 15),
                Text(
                  "$amount ",
                  style: TextStyle(fontSize: 16, color: color),
                ),
                Container(
                  color: color,
                  width: 1,
                  height: 20,
                ),
                SizedBox(width: 10),
              ],
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                color: color,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                color: color,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                color: color,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
