import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({super.key});

  final String title = 'Upgrade plan';
  final String subtitle = 'Recommended';
  final String firstStroke = 'Basic plan';
  final String secondStroke = 'Perfect your starters';

  static const Color mediumBlackColor = Color.fromARGB(255, 79, 79, 79);
  static const Color darkBlackColor = Color.fromARGB(255, 3, 3, 3);
  static const Color mediumGrayColor = Color.fromARGB(255, 129, 129, 129);
  static const Color buttonYellowColor = Color.fromARGB(255, 255, 199, 39);
  static const Color backgroundColor = Color.fromARGB(255, 222, 235, 232);
  static const Color greyBlueColor = Color.fromARGB(255, 55, 71, 79);

  static const TextStyle titleTextStyle = TextStyle(
    color: darkBlackColor,
    fontSize: 27,
    fontWeight: FontWeight.w600,
    fontFamily: 'Inter',
  );

  static const TextStyle costTextStyle = TextStyle(
    color: darkBlackColor,
    fontSize: 26,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle monthTextStyle = TextStyle(
    color: mediumGrayColor,
    fontSize: 14,
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Positioned(
            left: 24,
            top: 60,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          Column(
            children: [
              Expanded(
                flex: 5,
                child: backgroundContent(),
              ),
              Expanded(
                flex: 7,
                child: content(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget backgroundContent() {
    return SafeArea(
      child: FractionallySizedBox(
        widthFactor: .7,
        child: Image.asset(
          'assets/images/illustration3.png',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  Widget content() {
    return DecoratedBox(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 32,
          horizontal: 24,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: titleTextStyle,
            ),
            const SizedBox(height: 24),
            _buildPlan(
              price: 40,
              backgroundColor: Colors.white,
              foregroundColor: darkBlackColor,
              borderColor: mediumGrayColor,
            ),
            const SizedBox(height: 16),
            _buildRecommendedWrapper(
              child: _buildPlan(
                price: 70,
                backgroundColor: greyBlueColor,
                foregroundColor: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPlan({
    required double price,
    Color? backgroundColor,
    Color? foregroundColor,
    Color? borderColor,
  }) {
    const radius = BorderRadius.all(Radius.circular(24));
    return Material(
      color: backgroundColor,
      borderRadius: radius,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: radius,
          border: Border.all(color: borderColor ?? Colors.transparent),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 24,
        ),
        child: _bulidPlanContent(price, foregroundColor ?? mediumBlackColor),
      ),
    );
  }

  Widget _buildRecommendedWrapper({
    required Widget child,
  }) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
        color: Color(0x1A37474F),
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      child: Column(
        children: [
          const SizedBox(height: 8),
          const Text('Recommended'),
          const SizedBox(height: 16),
          child,
        ],
      ),
    );
  }

  Widget _bulidPlanContent(double price, Color foregroundColor) {
    const buttonSize = 60.0;

    return Builder(builder: (context) {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                firstStroke,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: foregroundColor,
                    ),
              ),
              Text(
                secondStroke,
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      color: foregroundColor,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  style: costTextStyle.copyWith(color: foregroundColor),
                  text: '\$${price.round()}',
                  children: [
                    TextSpan(
                      style: monthTextStyle.copyWith(color: foregroundColor),
                      text: ' /month',
                    ),
                  ],
                ),
              ),
              IconButton(
                // splashColor: Colors.red,
                // color: Colors.red,
                // splashRadius: 42,
                // constraints: const BoxConstraints.tightFor(
                //   width: 42,
                //   height: 42,
                // ),
                constraints: const BoxConstraints.expand(
                  width: buttonSize,
                  height: buttonSize,
                ),
                onPressed: () {},
                icon: Container(
                  height: buttonSize,
                  width: buttonSize,
                  decoration: const BoxDecoration(
                    color: buttonYellowColor,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.arrow_forward_ios_rounded),
                ),
                style: IconButton.styleFrom(
                  backgroundColor: buttonYellowColor,
                  fixedSize: const Size(50, 50),
                ),
              ),
            ],
          ),
        ],
      );
    });
  }
}
