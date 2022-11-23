import 'package:flutter/material.dart';

abstract class ThemeConsts {
  static const primaryColor = Color.fromARGB(255, 28, 18, 67);
  static const secondaryColor = Color.fromARGB(255, 162, 158, 182);
  static const buttonsColor = Color.fromARGB(255, 100, 63, 219);
  static const horizontalPadding = EdgeInsets.symmetric(horizontal: 24);
  static const backgroundColor = Color.fromARGB(255, 28, 18, 67);

  static final buttonsStyle = ElevatedButton.styleFrom(
    fixedSize: const Size(double.infinity, 52),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    backgroundColor: ThemeConsts.buttonsColor,
    textStyle: ThemeConsts.secondaryTextStyle.copyWith(
      fontSize: 16,
      color: Colors.white,
    ),
  );

  static const primaryTextStyle = TextStyle(
    fontFamily: 'SF-Pro-Display',
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 1,
    color: primaryColor,
  );

  static const secondaryTextStyle = TextStyle(
    fontFamily: 'SF-Pro-Display',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    letterSpacing: 1,
    color: secondaryColor,
  );
}
