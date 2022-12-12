part of 'settings_bloc.dart';

enum TemperatureUnit { fahrenheit, celsius }

abstract class SettingsState extends Equatable {
  final TemperatureUnit temperatureUnit;

  SettingsState({required this.temperatureUnit})
      : assert(temperatureUnit != null);

  @override
  List<Object> get props => [];
}
