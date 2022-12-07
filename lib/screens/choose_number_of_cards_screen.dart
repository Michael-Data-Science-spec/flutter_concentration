import 'package:concentration/utils/constants/app_alignment.dart';
import 'package:concentration/utils/constants/app_strings.dart';
import 'package:concentration/widgets/app_blue_popup.dart';
import 'package:concentration/widgets/app_button.dart';
import 'package:concentration/widgets/app_big_text.dart';
import 'package:concentration/widgets/app_get_number_of_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

int _kNumberOfCards = 8;

class ChooseNumberOfCardsPage extends StatelessWidget {
  const ChooseNumberOfCardsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/bg_image.png"),
            fit: BoxFit.cover,
          )),
          child: Align(
              alignment: FractionalOffset.topCenter,
              child: Column(
                  // alignment:
                  children: [
                    Popup(text: AppStrigns.choosNumberOfCards),
                    const SizedBox(height: 210),
                    NumberOfCards(),
                    const SizedBox(
                      height: AppAlignment.interButton,
                    ),
                    AppButton(
                        text: AppStrigns.goBack,
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ]))));
}
