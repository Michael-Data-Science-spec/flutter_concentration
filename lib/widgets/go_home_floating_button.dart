import 'package:concentration/screens/home_screen.dart';
import 'package:concentration/utils/constants/app_colors.dart';
import 'package:concentration/utils/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class GoHomeFloatingButton extends StatelessWidget {
  const GoHomeFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.of(context)
            .popUntil(ModalRoute.withName(HomeScreen.routeName));
      },
      child: Icon(Icons.home, color: AppColors.textBlack),
      backgroundColor: AppColors.buttonPurple,
    );
  }
}
