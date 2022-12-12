part of 'theme_bloc.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();
}

class ThemeEventWeatherChanged extends ThemeEvent {
  final CurrentWeatherCondition currentWeatherCondition;

  ThemeEventWeatherChanged({required this.currentWeatherCondition})
      : assert(currentWeatherCondition != null);
  @override
  List<Object?> get props => [currentWeatherCondition];
}
