import 'package:concentration/bloc/game_parameters/game_parameters_bloc.dart';
import 'package:concentration/bloc/game_parameters/game_parameters_event.dart';
import 'package:concentration/bloc/slider/slider_index.dart';
import 'package:concentration/screens/game_type_screen.dart';
import 'package:concentration/utils/constants/app_alignment.dart';
import 'package:concentration/utils/constants/app_strings.dart';
import 'package:concentration/utils/constants/app_text_styles.dart';
import 'package:concentration/widgets/big_button.dart';
import 'package:concentration/widgets/card_number_slider.dart';
import 'package:concentration/widgets/custom_scaffold.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChooseNumberOfCardsScreen extends StatelessWidget {
  static const String routeName = "/choose_num_cards";

  const ChooseNumberOfCardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gpBloc = BlocProvider.of<GameParametersBloc>(context);

    return CustomScaffold(
      appBarContent: Text(AppStrings.chooseNumberOfCards,
          style: AppTextStyles.irishGrover40regular),
      scaffoldBody: BlocProvider(
          create: (context) => SliderBloc(),
          child: BlocBuilder<SliderBloc, SliderState>(
            builder: (context, state) => Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(height: AppAlignment.toBottom),
                  BigButton(
                      text: state.sliderValue.toInt().toString(),
                      onPressed: () {
                        Navigator.of(context)
                            .pushNamed(GameTypeScreen.routeName);
                        gpBloc.add(NumberOfCards(numCards: state.sliderValue));
                      }),
                  CardNumberSlider(currentValue: state.sliderValue)
                ],
              ),
            ),
          )),
    );
  }
}
