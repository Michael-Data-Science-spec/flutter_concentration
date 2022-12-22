import 'package:equatable/equatable.dart';

class SliderState extends Equatable {
  final double sliderValue;

  const SliderState({required this.sliderValue});

  @override
  List<Object> get props => [sliderValue];
}
