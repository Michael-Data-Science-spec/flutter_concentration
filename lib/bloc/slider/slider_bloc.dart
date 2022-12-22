import 'package:bloc/bloc.dart';
import 'package:concentration/bloc/slider/slider_event.dart';
import 'package:concentration/bloc/slider/slider_state.dart';

class SliderBloc extends Bloc<SliderEvent, SliderState> {
  SliderBloc() : super(const SliderState(sliderValue: 12)) {
    on<MoveSlider>(
        (event, emit) => emit(SliderState(sliderValue: event.newValue)));
  }
}
