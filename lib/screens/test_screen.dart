import 'package:concentration/app/card.dart';
import 'package:concentration/app/concentration.dart';
import 'package:concentration/bloc/game_logic/game_logic_bloc.dart';
import 'package:concentration/bloc/game_logic/game_logic_event.dart';
import 'package:concentration/bloc/game_parameters/game_parameters_bloc.dart';
import 'package:concentration/bloc/game_parameters/game_parameters_event.dart';
import 'package:concentration/bloc/game_parameters/game_parameters_state.dart';
import 'package:concentration/utils/constants/app_alignment.dart';
import 'package:concentration/utils/constants/app_game_type.dart';
import 'package:concentration/utils/constants/app_strings.dart';
import 'package:concentration/utils/constants/app_text_styles.dart';
import 'package:concentration/utils/constants/game_parameters.dart';
import 'package:concentration/widgets/big_button.dart';
import 'package:concentration/widgets/card_button.dart';
import 'package:concentration/widgets/custom_scaffold.dart';
import 'package:concentration/widgets/main_button.dart';
import 'package:flutter/cupertino.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TestScreen extends StatelessWidget {
  static const String routeName = "/test";

  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gpBloc = BlocProvider.of<GameParametersBloc>(context);
    final glBloc = BlocProvider.of<GameLogicBloc>(context);

    // glBloc.add(UpdateGame(
    //     game: Concentration(
    //         gameDifficulty: gpBloc.state.difficulty,
    //         gameType: gpBloc.state.type,
    //         numCards: gpBloc.state.numCards.toInt())));
    // List<ConcentrationCard> cardList = glBloc.state.game.listOfCards;

    return CustomScaffold(
        appBarContent: Text(
          AppStrings.chooseGameType,
          style: AppTextStyles.irishGrover40regular,
        ),
        scaffoldBody: Column(
          children: [
            // Text(glBloc.state.game.gameDifficulty),
            // Text(glBloc.state.game.numCards.toString())
          ],
        ));
  }
}
