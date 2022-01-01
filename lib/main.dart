import 'package:e_wallet_mobile_app/pages/screens/Onboarding/screens/onboarding_sceen.dart';
import 'package:e_wallet_mobile_app/styles/constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget _getFirstPage() {
    return OnboardingScreen();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white,
        fontFamily: GoogleFonts.varelaRound().fontFamily,
        primaryColor: k_blue,
        appBarTheme: AppBarTheme(
          elevation: 0.0,
          color: Colors.transparent,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: k_black,
          unselectedItemColor: k_fontGrey,
          type: BottomNavigationBarType.fixed,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
        ),
        textTheme: TextTheme(
          headline1: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          headline2: TextStyle(
            color: k_black,
            fontSize: 15,
          ),
          headline3: TextStyle(
            color: k_fontGrey,
            fontSize: 12,
          ),
          headline4: TextStyle(
            color: k_blue,
            fontSize: 12,
          ),
          headline5: TextStyle(
            color: Colors.white.withOpacity(0.5),
            fontSize: 16,
          ),
          headline6: TextStyle(
            color: k_yellow,
            fontSize: 16,
          ),
        ),
      ),
      home: _getFirstPage(),
    );
  }
}
