import 'package:equatable/equatable.dart';

class SliderEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class MoveSlider extends SliderEvent {
  final double newValue;

  MoveSlider({required this.newValue});
}
