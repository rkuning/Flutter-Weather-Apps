import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:wthrapp/models/weathers/hourly_weather_model.dart';

part 'hourly_weather_event.dart';
part 'hourly_weather_state.dart';

class HourlyWeatherBloc extends Bloc<HourlyWeatherEvent, HourlyWeatherState> {
  HourlyWeatherBloc() : super(HourlyWeatherInitial()) {
    on<HourlyWeatherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
