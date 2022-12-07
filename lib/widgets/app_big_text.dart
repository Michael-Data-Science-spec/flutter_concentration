import 'package:concentration/utils/constants/app_colors.dart';
import 'package:concentration/utils/constants/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const double _kButtonHeight = 178;
const double _kButtonWidth = 199;

class BigTextButton extends StatelessWidget {
  const BigTextButton({Key? key, required this.text, this.onPressed})
      : super(key: key);

  final String text;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) => SizedBox(
      height: _kButtonHeight,
      width: _kButtonWidth,
      child: MaterialButton(
        onPressed: onPressed,
        color: AppColors.primaryBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: Text(
          text,
          style: AppTextStyles.irishGrover80regular,
        ),
      ));
}
