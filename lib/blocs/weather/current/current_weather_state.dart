part of 'current_weather_bloc.dart';

abstract class CurrentWeatherState extends Equatable {
  const CurrentWeatherState();

  @override
  List<Object> get props => [];
}

class CurrentWeatherInitial extends CurrentWeatherState {}

class CurrentWeatherLoading extends CurrentWeatherState {}

class CurrentWeatherSuccess extends CurrentWeatherState {
  final CurrentWeatherModel currentWeather;

  CurrentWeatherSuccess({required this.currentWeather})
      : assert(currentWeather != null);
  @override
  List<Object> get props => [currentWeather];
}

class CurrentWeatherFailure extends CurrentWeatherState {}
