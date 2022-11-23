import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:screens_challenge/screens/theme/consts.dart';
import 'package:screens_challenge/screens/widgets/text_field.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  final String _title = 'Forgot password ?';
  final String _subtitle =
      'Enter your phone number then we will send\nyou OTP sms to reset new password.';
  final String _buttonText = 'Send OTP';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(left: 18, top: 60, child: _backButton()),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _content(),
                const SizedBox(height: 24),
                _phoneNumberInput(),
                const SizedBox(height: 16),
                _bottomButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _backButton() {
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

  Widget _content() {
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
            style: ThemeConsts.primaryTextStyle,
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              _subtitle,
              textAlign: TextAlign.center,
              style: ThemeConsts.secondaryTextStyle,
            ),
          ),
        ],
      );
    });
  }

  Widget _phoneNumberInput() {
    return CustomTextField(
      keyboardType: const TextInputType.numberWithOptions(),
      inputFormatters: [
        FilteringTextInputFormatter(
          RegExp('[0-9]'),
          allow: true,
        ),
      ],
      borderSideColor: ThemeConsts.buttonsColor,
      icon: const Icon(
        Icons.phone_outlined,
        color: ThemeConsts.primaryColor,
        size: 24,
      ),
    );
  }

  Widget _bottomButton() {
    return Builder(builder: (context) {
      return Padding(
        padding: ThemeConsts.horizontalPadding,
        child: ElevatedButton(
          style: ThemeConsts.buttonsStyle,
          onPressed: () {},
          child: Text(_buttonText),
        ),
      );
    });
  }
}
