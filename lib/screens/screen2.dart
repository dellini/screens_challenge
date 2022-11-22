import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  final String _title = 'Forgot password ?';
  final String _subtitle =
      'Enter your phone number then we will send\nyou OTP sms to reset new password.';
  final String _buttonText = 'Send OTP';

  static const _primaryColor = Color.fromARGB(255, 28, 18, 67);
  static const _secondaryColor = Color.fromARGB(255, 162, 158, 182);
  static const _outlineColor = Color.fromARGB(255, 100, 63, 219);
  final _horizontalPadding = const EdgeInsets.symmetric(horizontal: 24);

  final _primaryTextStyle = const TextStyle(
    fontFamily: 'SF-Pro-Display',
    fontWeight: FontWeight.bold,
    fontSize: 24,
    letterSpacing: 1,
    color: _primaryColor,
  );

  final _secondaryTextStyle = const TextStyle(
    fontFamily: 'SF-Pro-Display',
    fontWeight: FontWeight.w500,
    fontSize: 14,
    letterSpacing: 1,
    color: _secondaryColor,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(left: 18, top: 60, child: backButton()),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                content(),
                const SizedBox(height: 24),
                phoneNumberInput(),
                const SizedBox(height: 16),
                bottomButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget backButton() {
    return Builder(builder: (context) {
      return Align(
        alignment: Alignment.topLeft,
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            size: 16,
          ),
        ),
      );
    });
  }

  Widget content() {
    return Builder(builder: (context) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 24),
          Image.asset(
            'assets/images/illustration2.png',
            scale: 0.9,
          ),
          const SizedBox(height: 24),
          Text(
            _title,
            textAlign: TextAlign.center,
            style: _primaryTextStyle,
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              _subtitle,
              textAlign: TextAlign.center,
              style: _secondaryTextStyle,
            ),
          ),
        ],
      );
    });
  }

  Widget phoneNumberInput() {
    return Builder(builder: (context) {
      return SizedBox(
        height: 52,
        child: Padding(
          padding: _horizontalPadding,
          child: TextFormField(
            keyboardType: const TextInputType.numberWithOptions(),
            inputFormatters: [
              FilteringTextInputFormatter(
                RegExp('[0-9]'),
                allow: true,
              )
            ],
            cursorColor: _outlineColor,
            cursorRadius: const Radius.circular(8),
            cursorHeight: 20,
            decoration: InputDecoration(
              isDense: true,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: _outlineColor),
                borderRadius: BorderRadius.circular(16),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: _outlineColor),
                borderRadius: BorderRadius.circular(16),
              ),
              prefixIcon: const Padding(
                padding: EdgeInsets.only(
                  left: 24,
                  right: 16,
                ),
                child: Icon(
                  Icons.phone_outlined,
                  color: _primaryColor,
                  size: 24,
                ),
              ),
            ),
          ),
        ),
      );
    });
  }

  Widget bottomButton() {
    return Builder(builder: (context) {
      return Padding(
        padding: _horizontalPadding,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size(double.infinity, 52),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            backgroundColor: _outlineColor,
          ),
          onPressed: () {},
          child: Text(
            _buttonText,
            style: _secondaryTextStyle.copyWith(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        ),
      );
    });
  }
}
