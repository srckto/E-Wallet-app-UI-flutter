import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CustomAlertConfirmDelete extends StatelessWidget {
  final String message;
  const CustomAlertConfirmDelete({
    Key? key,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/remove_illustration.png"),
          SizedBox(height: 20),
          Text(
            message,
            style: Theme.of(context).textTheme.headline2!.copyWith(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () => Get.back(),
                  child: Text(
                    "Cancel",
                    style: Theme.of(context).textTheme.headline4!.copyWith(fontSize: 14),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () => Get.back(),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    ),
                    child: Text(
                      "Remove",
                      style: Theme.of(context).textTheme.headline1!.copyWith(
                            fontSize: 16,
                          ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
