import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  final String _title = 'WELCOME TO MONUMENTAL HABITS';
  final String _subtitleFirst = 'WE CAN';
  final String _subtitleSecond = ' HELP YOU ';
  final String _subtitleThird = 'TO BE A BETTER VERSION OF';
  final String _subtitleFourth = ' YOURSELF.';
  final String _skip = 'Skip';
  final String _next = 'Next';

  final _symmetricPadding = const EdgeInsets.symmetric(horizontal: 32);
  static const _primaryColor = Color.fromARGB(255, 87, 51, 83);
  static const _secondaryColor = Color.fromARGB(255, 249, 181, 102);
  final _secondaryTextStyle = const TextStyle(
    fontFamily: 'Manrope',
    fontWeight: FontWeight.bold,
    fontSize: 17,
    color: _primaryColor,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 70),
            content(),
            const SizedBox(height: 60),
            buttons(),
          ],
        ),
      ),
    );
  }

  Widget content() {
    return Column(
      children: [
        Padding(
          padding: _symmetricPadding,
          child: Text(
            _title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Klasik',
              fontSize: 32,
              color: _primaryColor,
            ),
          ),
        ),
        Image.asset('assets/images/illustration.png'),
        Padding(
          padding: _symmetricPadding,
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: _subtitleFirst,
              style: _secondaryTextStyle,
              children: <TextSpan>[
                TextSpan(
                  text: _subtitleSecond,
                  style: _secondaryTextStyle.copyWith(color: _secondaryColor),
                ),
                TextSpan(text: _subtitleThird),
                TextSpan(
                  text: _subtitleFourth,
                  style: _secondaryTextStyle.copyWith(color: _secondaryColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget dot({bool isSelected = false}) {
    final double size = isSelected ? 13 : 11;
    final color = isSelected ? _primaryColor : _secondaryColor;
    final border = isSelected
        ? Border.all(
            color: _primaryColor.withOpacity(0.2),
            width: 2,
            strokeAlign: StrokeAlign.outside)
        : null;
    return Container(
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: border,
      ),
      width: size,
      height: size,
    );
  }

  Widget buttons() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () {},
            child: Text(
              _skip,
              style: _secondaryTextStyle,
            ),
          ),
          Row(
            children: [
              dot(isSelected: true),
              const SizedBox(width: 9),
              dot(isSelected: false),
              const SizedBox(width: 7),
              dot(isSelected: false),
              const SizedBox(width: 7),
              dot(isSelected: false),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              _next,
              style: _secondaryTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
