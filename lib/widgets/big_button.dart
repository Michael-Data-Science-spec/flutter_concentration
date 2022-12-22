import 'package:concentration/utils/constants/app_colors.dart';
import 'package:concentration/utils/constants/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

const double _kButtonHeight = 178;
const double _kButtonWidth = 199;

class BigButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const BigButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _kButtonHeight,
      width: _kButtonWidth,
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: double.infinity,
        color: AppColors.primaryBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          text,
          style: AppTextStyles.irishGrover80regular,
        ),
      ),
    );
  }
}
