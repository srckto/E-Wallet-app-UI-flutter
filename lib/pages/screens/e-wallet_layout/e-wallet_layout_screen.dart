import 'package:e_wallet_mobile_app/controllers/e-wallet_layout_controller.dart';
import 'package:e_wallet_mobile_app/styles/constant.dart';
import 'package:e_wallet_mobile_app/styles/size_config.dart';
import 'package:flutter/material.dart';

class E_WalletLayoutScreen extends StatefulWidget {
  const E_WalletLayoutScreen({Key? key}) : super(key: key);

  @override
  State<E_WalletLayoutScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<E_WalletLayoutScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);

    return SafeArea(
      child: Scaffold(
        body: E_WalletLayoutController.item[E_WalletLayoutController.currentIndex].screen,
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(10),
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
          child: Container(
            width: SizeConfig.screenWidth,
            height: 80,
            decoration: BoxDecoration(
              color: k_grey,
              borderRadius: BorderRadius.circular(20),
            ),
            child: BottomNavigationBar(
              currentIndex: E_WalletLayoutController.currentIndex,
              onTap: (int index) {
                setState(() {
                  E_WalletLayoutController.currentIndex = index;
                });
              },
              items: E_WalletLayoutController.item
                  .map(
                    (e) => BottomNavigationBarItem(
                      icon: e.icon,
                      label: e.label,
                    ),
                  )
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
