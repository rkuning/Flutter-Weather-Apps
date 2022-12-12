part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  final Color backgroundColor;
  final Color textColor;

  ThemeState({required this.backgroundColor, required this.textColor})
      : assert(backgroundColor != null),
        assert(textColor != null);

  @override
  List<Object?> get props => [];
}
