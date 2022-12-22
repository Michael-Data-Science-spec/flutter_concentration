import 'package:concentration/app/concentration.dart';
import 'package:concentration/bloc/game_logic/game_logic_bloc.dart';
import 'package:concentration/bloc/game_parameters/game_parameters_bloc.dart';
import 'package:concentration/screens/game_screen.dart';
import 'package:concentration/screens/game_type_screen.dart';
import 'package:concentration/screens/home_screen.dart';
import 'package:concentration/screens/number_of_cards_screen.dart';
import 'package:concentration/screens/select_difficulty_screen.dart';
import 'package:concentration/screens/test_screen.dart';
import 'package:concentration/utils/constants/app_game_type.dart';
import 'package:concentration/utils/constants/game_parameters.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GameParametersBloc()),
        BlocProvider(create: (context) => GameLogicBloc()),
      ],
      child: MaterialApp(
        title: 'Concentration',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (context) => HomeScreen(),
          ChooseNumberOfCardsScreen.routeName: (context) =>
              ChooseNumberOfCardsScreen(),
          GameTypeScreen.routeName: (context) => GameTypeScreen(),
          GameDifficultyScreen.routeName: (context) => GameDifficultyScreen(),
          GameScreen.routeName: (context) => GameScreen(),
          TestScreen.routeName: (context) => TestScreen(),
        },
      ),
    );
  }
}
