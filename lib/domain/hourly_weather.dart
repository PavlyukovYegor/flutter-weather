import 'package:weather_app/domain/additional_weather_parameters.dart';
import 'package:weather_app/domain/parameters_temperature_default.dart';
import 'package:weather_app/domain/sunny_day.dart';
import 'package:weather_app/domain/weather.dart';

class HourlyWeather {
  final DateTime date;
  final ParametersTemperatureDefault parametersTemperature;
  final AdditionalWeatherParameters additionalWeatherParameters;
  final Weather weather;

  HourlyWeather(this.date, this.weather, this.parametersTemperature,
      this.additionalWeatherParameters);

  HourlyWeather.fromJson(Map<String, dynamic> json)
      : date = DateTime.parse(json['dt'].toString()),
        parametersTemperature = ParametersTemperatureDefault.fromJson(json),
        additionalWeatherParameters =
            AdditionalWeatherParameters.fromJson(json),
        weather = Weather.fromJson(json['weather'][0]);
}
