import 'package:concentration/screens/choose_number_of_cards_screen.dart';
import 'package:concentration/utils/constants/app_alignment.dart';
import 'package:concentration/utils/constants/app_strings.dart';
import 'package:concentration/widgets/app_button.dart';
import 'package:concentration/widgets/app_get_number_of_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
                  const SizedBox(height: 366),
                  AppButton(
                    text: AppStrigns.newGame,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ChooseNumberOfCardsPage()));
                    },
                  ),
                  const SizedBox(height: AppAlignment.interButton),
                  AppButton(
                    text: "Continue",
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: AppAlignment.interButton,
                  ),
                  AppButton(
                    text: "Options",
                    onPressed: () {},
                  ),
                ]),
          )));
}
