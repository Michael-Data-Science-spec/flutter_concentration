import 'package:concentration/utils/constants/app_colors.dart';
import 'package:concentration/utils/constants/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const double _kButtonHeight = 77;
const double _kButtonWidth = 348;

class AppButton extends StatelessWidget {
  const AppButton({Key? key, required this.text, this.onPressed})
      : super(key: key);

  final String text;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => SizedBox(
      height: _kButtonHeight,
      width: _kButtonWidth,
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: double.infinity,
        color: AppColors.buttonPurple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          text,
          style: AppTextStyles.irishGrover40regular,
        ),
      ));
}
