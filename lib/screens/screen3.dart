import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:screens_challenge/screens/theme/consts.dart';
import 'package:screens_challenge/screens/widgets/text_field.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  final String name = 'Name';
  final String numberOfMember = 'Number of member';
  final String email = 'Email';
  final String buttonText = 'Create';
  final String title = 'Create workspace';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: const Padding(
            padding: EdgeInsets.only(left: 8),
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 16,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: ThemeConsts.backgroundColor,
        foregroundColor: Colors.white,
        title: Text(
          title,
          style: ThemeConsts.primaryTextStyle.copyWith(
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      backgroundColor: ThemeConsts.backgroundColor,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _inputSection(
                data: name,
                icon: Icons.person_outline,
              ),
              const SizedBox(height: 24),
              _inputSection(
                  data: numberOfMember,
                  isNumberField: true,
                  icon: Icons.people_outline),
              const SizedBox(height: 24),
              _inputSection(
                data: email,
                icon: Icons.email_outlined,
              ),
              const SizedBox(height: 32),
              Padding(
                padding: ThemeConsts.horizontalPadding,
                child: ElevatedButton(
                  style: ThemeConsts.buttonsStyle,
                  onPressed: () {},
                  child: Text(buttonText),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _inputSection({
    required String data,
    TextInputType keyboardType = TextInputType.text,
    required IconData icon,
    bool isNumberField = false,
  }) {
    return Padding(
      padding: ThemeConsts.horizontalPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data,
            style: ThemeConsts.primaryTextStyle.copyWith(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 16),
          CustomTextField(
            keyboardType: isNumberField
                ? const TextInputType.numberWithOptions()
                : keyboardType,
            borderSideColor: Colors.white,
            icon: Icon(
              icon,
              color: Colors.white,
              size: 24,
            ),
            inputFormatters: [
              if (isNumberField)
                FilteringTextInputFormatter(
                  RegExp('[0-9]'),
                  allow: true,
                ),
            ],
          ),
        ],
      ),
    );
  }
}
