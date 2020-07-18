import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:tourismo_fyp/Weather/model/weather.dart';

abstract class WeatherState extends Equatable {
  WeatherState([List prop = const []]) : super();
}

class WeatherEmpty extends WeatherState {
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class WeatherLoading extends WeatherState {
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class WeatherLoaded extends WeatherState {
  final Weather weather;

  WeatherLoaded({@required this.weather})
      : assert(weather != null),
        super([weather]);

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class WeatherError extends WeatherState {
  final int errorCode;

  WeatherError({@required this.errorCode})
      : assert(errorCode != null),
        super([errorCode]);

  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}
