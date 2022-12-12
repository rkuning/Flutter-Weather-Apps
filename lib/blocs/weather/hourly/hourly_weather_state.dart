part of 'hourly_weather_bloc.dart';

abstract class HourlyWeatherState extends Equatable {
  const HourlyWeatherState();

  @override
  List<Object> get props => [];
}

class HourlyWeatherInitial extends HourlyWeatherState {}

class HourlyWeatherLoading extends HourlyWeatherState {}

class HourlyWeatherSuccess extends HourlyWeatherState {
  final HourlyWeatherModel hourlyWeather;

  HourlyWeatherSuccess({required this.hourlyWeather})
      : assert(hourlyWeather != null);
  @override
  List<Object> get props => [hourlyWeather];
}

class HourlyWeatherFailure extends HourlyWeatherState {}
