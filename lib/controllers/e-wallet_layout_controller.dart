import 'package:e_wallet_mobile_app/pages/screens/contacts/screens/contacts_screen.dart';
import 'package:e_wallet_mobile_app/pages/screens/profile/screens/profile_screen.dart';
import 'package:e_wallet_mobile_app/pages/screens/home/screens/home_screen.dart';
import 'package:e_wallet_mobile_app/pages/screens/transactions/screens/transactions_screen.dart';
import 'package:e_wallet_mobile_app/styles/Iconly-Broken_icons.dart';
import 'package:flutter/material.dart';

class _BoardingItem {
  final String label;
  final Icon icon;
  final Widget screen;

  _BoardingItem({
    required this.label,
    required this.icon,
    required this.screen,
  });
}

class E_WalletLayoutController {
  static int currentIndex = 0;
  static List<_BoardingItem> item = [
    _BoardingItem(label: "Home", icon: Icon(Iconly_Broken.Home), screen: HomeScreen()),
    _BoardingItem(
        label: "Transactions", icon: Icon(Iconly_Broken.Wallet), screen: TransactionsScreen()),
    _BoardingItem(label: "Contacts", icon: Icon(Iconly_Broken.User1), screen: ContactsScreen()),
    _BoardingItem(label: "Profile", icon: Icon(Iconly_Broken.User), screen: ProfileScreen()),
  ];

  static void changeIndex(int newIndex) {
    currentIndex = newIndex;
  }
}
