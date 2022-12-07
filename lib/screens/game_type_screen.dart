import 'package:concentration/utils/constants/app_alignment.dart';
import 'package:concentration/utils/constants/app_strings.dart';
import 'package:concentration/widgets/app_blue_popup.dart';
import 'package:concentration/widgets/app_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChooseGameTypePage extends StatelessWidget {
  const ChooseGameTypePage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
          body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/bg_image.png"),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            Popup(text: AppStrigns.selectDifficulty),
            SizedBox(height: 286),
            AppButton(
              text: AppStrigns.levelHard,
              onPressed: () {},
            ),
            SizedBox(
              height: AppAlignment.interButton,
            ),
            AppButton(
              text: AppStrigns.levelMedium,
              onPressed: () {},
            ),
            SizedBox(
              height: AppAlignment.interButton,
            ),
            AppButton(
              text: AppStrigns.levelEasy,
              onPressed: () {},
            ),
            SizedBox(
              height: AppAlignment.interButton,
            ),
            AppButton(
              text: AppStrigns.goBack,
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ));
}
