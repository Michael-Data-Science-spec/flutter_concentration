import 'package:concentration/utils/constants/app_colors.dart';
import 'package:concentration/utils/constants/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter_bloc/flutter_bloc.dart";

const double _kButtonHeight = 77;
const double _kButtonWidth = 348;

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const MainButton({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
      ),
    );
  }
}
