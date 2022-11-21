import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  final String title = 'WELCOME TO MONUMENTAL HABITS';
  final String subtitleFirst = 'WE CAN';
  final String subtitleSecond = ' HELP YOU ';
  final String subtitleThird = 'TO BE A BETTER VERSION OF';
  final String subtitleFourth = ' YOURSELF.';
  final String skip = 'Skip';
  final String next = 'Next';

  final symmetricPadding = const EdgeInsets.symmetric(horizontal: 32);
  static const primaryColor = Color.fromARGB(255, 87, 51, 83);
  static const secondaryColor = Color.fromARGB(255, 249, 181, 102);
  final secondaryTextStyle = const TextStyle(
    fontFamily: 'Manrope',
    fontWeight: FontWeight.bold,
    fontSize: 17,
    color: primaryColor,
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
          padding: symmetricPadding,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Klasik',
              fontSize: 32,
              color: primaryColor,
            ),
          ),
        ),
        Image.asset('assets/images/illustration.png'),
        Padding(
          padding: symmetricPadding,
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: subtitleFirst,
              style: secondaryTextStyle,
              children: <TextSpan>[
                TextSpan(
                  text: subtitleSecond,
                  style: secondaryTextStyle.copyWith(color: secondaryColor),
                ),
                TextSpan(text: subtitleThird),
                TextSpan(
                  text: subtitleFourth,
                  style: secondaryTextStyle.copyWith(color: secondaryColor),
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
    final color = isSelected ? primaryColor : secondaryColor;
    final border = isSelected
        ? Border.all(
            color: primaryColor.withOpacity(0.2),
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
              skip,
              style: secondaryTextStyle,
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
              next,
              style: secondaryTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
