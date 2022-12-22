import 'package:concentration/app/card.dart';
import 'package:concentration/bloc/game_logic/game_logic_bloc.dart';
import 'package:concentration/bloc/game_logic/game_logic_event.dart';
import 'package:concentration/utils/constants/app_colors.dart';
import 'package:concentration/utils/constants/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardButton extends StatelessWidget {
  final ConcentrationCard card;
  final double cardSize;
  final bool isFlipped;
  final VoidCallback onPressed;

  const CardButton(
      {super.key,
      required this.isFlipped,
      required this.onPressed,
      required this.card,
      required this.cardSize});

  @override
  Widget build(BuildContext context) {
    final glBloc = BlocProvider.of<GameLogicBloc>(context);

    if (!isFlipped) {
      return SizedBox(
        width: cardSize,
        height: cardSize,
        child: Container(
            child: MaterialButton(
                onPressed: onPressed,
                minWidth: double.infinity,
                color: AppColors.primaryBlue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: card.content,
                      fit: BoxFit.cover,
                    ),
                  ),
                ))),
      );
    } else {
      return SizedBox(
        width: cardSize,
        height: cardSize,
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: double.infinity,
          color: AppColors.primaryBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      );
    }
  }
}
