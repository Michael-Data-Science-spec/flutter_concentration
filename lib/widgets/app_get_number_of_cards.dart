import 'package:concentration/screens/game_type_screen.dart';
import 'package:concentration/utils/constants/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:concentration/widgets/app_big_text.dart';

const double _kMinValue = 8;
const double _kMaxValue = 20;
double currentSliderValue = 20;

class NumberOfCards extends StatefulWidget {
  NumberOfCards({Key? key}) : super(key: key);

  @override
  State<NumberOfCards> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<NumberOfCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          BigTextButton(
            text: currentSliderValue.toInt().toString(),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChooseGameTypePage()));
            },
          ),
          SizedBox(height: 136),
          Slider(
            activeColor: AppColors.primaryBlue,
            value: currentSliderValue,
            min: _kMinValue,
            max: _kMaxValue,
            divisions: 3,
            onChanged: (double value) {
              setState(() {
                currentSliderValue = value;
              });
            },
          ),
        ],
      ),
    );
  }
}
