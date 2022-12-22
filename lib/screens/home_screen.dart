import 'package:concentration/screens/game_type_screen.dart';
import 'package:concentration/screens/number_of_cards_screen.dart';
import 'package:concentration/utils/constants/app_alignment.dart';
import 'package:concentration/utils/constants/app_strings.dart';
import 'package:concentration/utils/constants/app_text_styles.dart';
import 'package:concentration/widgets/custom_scaffold.dart';
import 'package:concentration/widgets/main_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = "/home";

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
        appBarContent: Text(AppStrings.mainTitle,
            style: AppTextStyles.irishGrover40regular),
        scaffoldBody: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(height: AppAlignment.fromTop),
            MainButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(ChooseNumberOfCardsScreen.routeName);
                },
                text: AppStrings.newGame),
            MainButton(onPressed: () {}, text: AppStrings.continueGame),
            MainButton(onPressed: () {}, text: AppStrings.options),
            SizedBox(height: AppAlignment.toBottom),
          ],
        )));
  }
}
