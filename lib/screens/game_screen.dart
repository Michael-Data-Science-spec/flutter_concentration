import 'package:concentration/app/concentration.dart';
import 'package:concentration/bloc/game_logic/game_logic_bloc.dart';
import 'package:concentration/bloc/game_logic/game_logic_event.dart';
import 'package:concentration/bloc/game_logic/game_logic_index.dart';
import 'package:concentration/bloc/game_parameters/game_parameters_bloc.dart';
import 'package:concentration/bloc/game_parameters/game_parameters_state.dart';
import 'package:concentration/utils/constants/app_alignment.dart';
import 'package:concentration/utils/constants/app_game_type.dart';
import 'package:concentration/utils/constants/app_text_styles.dart';
import 'package:concentration/utils/constants/game_parameters.dart';
import 'package:concentration/widgets/card_button.dart';
import 'package:concentration/widgets/custom_scaffold.dart';
import 'package:concentration/widgets/main_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class GameScreen extends StatelessWidget {
  static const String routeName = "/game";

  const GameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final gpBloc = BlocProvider.of<GameParametersBloc>(context);
    final glBloc = BlocProvider.of<GameLogicBloc>(context);

    Concentration? game = glBloc.game;

    final int numCards = gpBloc.state.numCards.toInt();
    int numColumns = (numCards / 5).ceil();
    int numRows = (numCards ~/ numColumns);

    Map<int, int> numToSize = {8: 110, 12: 110, 16: 85, 20: 85};
    int cardSize = numToSize[numCards]!;

    bool isFliped(index) {
      if (glBloc.state.flipped1 != null &&
          glBloc.state.flipped1!.index == index) {
        return true;
      }
      if (glBloc.state.flipped2 != null &&
          glBloc.state.flipped2!.index == index) {
        return true;
      }
      if (glBloc.state.matchedCards[index] == true) {
        return true;
      }

      return false;
    }

    return CustomScaffold(
        appBarContent: Text("Timer", style: AppTextStyles.irishGrover40regular),
        scaffoldBody: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            // Text("Parameter Data"),
            // Text("difficulty: ${gpBloc.state.difficulty}"),
            // Text("numCards: ${gpBloc.state.numCards}"),
            // Text("Logic Data"),
            // Text("difficulty: ${glBloc.state.gameDifficulty}"),
            // Text("numCards: ${glBloc.state.numCards}"),
            // Text("Screen Parameters"),
            // Text("numRows: ${numRows}"),
            // Text("numColumns: ${numColumns}"),
            for (int i = 0; i < numRows; i++)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int j = 0; j < numColumns; j++)
                    CardButton(
                        isFlipped: isFliped(j * numRows + i),
                        card: glBloc.game!.listOfCards[j * numRows + i],
                        cardSize: cardSize.toDouble(),
                        onPressed: () {
                          glBloc.add(FlipCard(index: j * numRows + i));
                        })
                ],
              ),
            SizedBox(height: AppAlignment.toBottom),
          ],
        ));
  }
}
