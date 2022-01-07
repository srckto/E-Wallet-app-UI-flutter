import 'package:intl/intl.dart';

import 'package:e_wallet_mobile_app/styles/constant.dart';

class UserModel {
  final int id;
  final String email;
  final String name;
  final double amount;
  final String dateTime;
  final String image;
  final bool isSender;
  final double totalAmount;
  UserModel({
    required this.id,
    required this.email,
    required this.name,
    required this.amount,
    required this.dateTime,
    required this.image,
    required this.isSender,
    required this.totalAmount,
  });
}

final List<UserModel> usersList = [
  UserModel(
    amount: -66.5,
    name: "Sara Ibrahim",
    id: 1,
    image: k_imagePath,
    isSender: true,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: 783,
  ),
  UserModel(
    amount: 43.5,
    name: "Mohammd Ibrahim",
    id: 2,
    image: k_imagePath,
    isSender: false,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: 599,
  ),
  UserModel(
    id: 3,
    amount: -72.5,
    name: "Ismail Jassim",
    image: k_imagePath,
    isSender: true,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: 312,
  ),
  UserModel(
    id: 4,
    amount: 12.5,
    name: "Tareeq Ziad",
    image: k_imagePath,
    isSender: false,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: 23412,
  ),
  UserModel(
    amount: -10.5,
    name: "Ali Mahmoud",
    id: 5,
    image: k_imagePath,
    isSender: true,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: 1454,
  ),
  UserModel(
    id: 6,
    amount: 22.5,
    name: "Zaid Ahmed",
    image: k_imagePath,
    isSender: false,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: 325,
  ),
  UserModel(
    amount: -14.5,
    name: "Example Mahmoud",
    id: 7,
    image: k_imagePath,
    isSender: true,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: 1454,
  ),
  UserModel(
    amount: -120.5,
    name: "Bassam Mahmoud",
    id: 8,
    image: k_imagePath,
    isSender: true,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: 1454,
  ),
  UserModel(
    amount: -23.5,
    name: "Gassan Jabbar",
    id: 9,
    image: k_imagePath,
    isSender: true,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: 1454,
  ),
  UserModel(
    amount: -50.5,
    name: "Farouq Ahmed",
    id: 10,
    image: k_imagePath,
    isSender: true,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: 1454,
  ),
  UserModel(
    amount: -130.5,
    name: "Reetaj Ali",
    id: 11,
    image: k_imagePath,
    isSender: true,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: 1454,
  ),
  UserModel(
    amount: -80.5,
    name: "Nisreen Mohammed",
    id: 12,
    image: k_imagePath,
    isSender: true,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: 1454,
  ),
  UserModel(
    amount: -70.5,
    name: "Sara Mahmoud",
    id: 13,
    image: k_imagePath,
    isSender: true,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: 1454,
  ),
  UserModel(
    amount: -47.5,
    name: "Mohammed Mahmoud",
    id: 14,
    image: k_imagePath,
    isSender: true,
    dateTime: (DateFormat.yMMMMd().format(DateTime.now())),
    email: "email@gmail.com",
    totalAmount: 1454,
  ),
];

final List<UserModel> usersTransactions = usersList.where((element) => element.isSender).toList();

final List<UserModel> usersRequests = usersList.where((element) => element.isSender).toList();

final List<String> imagesList = [
  "assets/images/Card_02.png",
  "assets/images/Card_02.png",
  "assets/images/Card_02.png",
];

final UserModel mainUser = UserModel(
  amount: 0,
  dateTime: '',
  email: 'mainEmail@gmail.com',
  id: 0,
  image: k_imagePath,
  isSender: false,
  name: 'Ali Ismail',
  totalAmount: 1259,
);
