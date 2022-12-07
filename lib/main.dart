import 'package:concentration/screens/choose_number_of_cards_screen.dart';
import 'package:concentration/screens/homescreen.dart';
import 'package:concentration/widgets/app_get_number_of_cards.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Concentration',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomeScreen(),
    );
  }
}
