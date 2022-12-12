import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:wthrapp/models/weathers/current_weather_model.dart';

part 'current_weather_event.dart';
part 'current_weather_state.dart';

class CurrentWeatherBloc
    extends Bloc<CurrentWeatherEvent, CurrentWeatherState> {
  CurrentWeatherBloc() : super(CurrentWeatherInitial()) {
    on<CurrentWeatherEvent>((event, emit) {});
  }
}
