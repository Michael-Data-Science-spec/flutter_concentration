import 'package:concentration/screens/test_screen.dart';
import 'package:concentration/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter_bloc/flutter_bloc.dart";
import "package:concentration/bloc/slider/slider_index.dart";

double currentSliderValue = 12;

class CardNumberSlider extends StatelessWidget {
  final int divisions;
  final double minValue;
  final double maxValue;
  final double currentValue;

  const CardNumberSlider(
      {super.key,
      this.divisions = 3,
      this.minValue = 8,
      this.maxValue = 20,
      required this.currentValue});

  @override
  Widget build(BuildContext context) {
    final sliderBloc = BlocProvider.of<SliderBloc>(context);

    return Container(
        child: Slider(
            activeColor: AppColors.primaryBlue,
            value: currentValue,
            divisions: divisions,
            min: minValue,
            max: maxValue,
            onChanged: (double value) {
              sliderBloc.add(MoveSlider(newValue: value));
            }));
  }
}
