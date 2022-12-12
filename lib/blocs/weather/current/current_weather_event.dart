part of 'current_weather_bloc.dart';

abstract class CurrentWeatherEvent extends Equatable {
  const CurrentWeatherEvent();

  @override
  List<Object> get props => [];
}

class CurrentWeatherEventRequested extends CurrentWeatherEvent {
  final String city;

  CurrentWeatherEventRequested(@required this.city) : assert(city != null);

  @override
  List<Object> get props => [city];
}

class CurrentWeatherEventRefresh extends CurrentWeatherEvent {
  final String city;

  CurrentWeatherEventRefresh(@required this.city) : assert(city != null);

  @override
  List<Object> get props => [city];
}
