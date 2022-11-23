import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:screens_challenge/screens/theme/consts.dart';

class CustomTextField extends StatelessWidget {
  final List<TextInputFormatter> inputFormatters;
  final TextInputType keyboardType;
  final Color borderSideColor;
  final Widget icon;

  const CustomTextField({
    super.key,
    this.inputFormatters = const [],
    required this.keyboardType,
    required this.borderSideColor,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return SizedBox(
        height: 52,
        child: TextFormField(
          keyboardType: keyboardType,
          inputFormatters: inputFormatters,
          cursorColor: ThemeConsts.buttonsColor,
          cursorRadius: const Radius.circular(8),
          cursorHeight: 20,
          style: ThemeConsts.secondaryTextStyle.copyWith(
            color: Colors.white,
            fontSize: 16,
          ),
          decoration: InputDecoration(
            isDense: true,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderSideColor),
              borderRadius: BorderRadius.circular(16),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: borderSideColor),
              borderRadius: BorderRadius.circular(16),
            ),
            prefixIcon: Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 16,
              ),
              child: icon,
            ),
          ),
        ),
      );
    });
  }
}
