import 'package:weather_app/domain/parameters_temperature_default.dart';
import 'package:weather_app/domain/sunny_day.dart';
import 'package:weather_app/domain/weather.dart';

import 'additional_weather_parameters.dart';

class CurrentWeather {
  final DateTime date;
  final SunnyDay sunnyDay;
  final ParametersTemperatureDefault parametersTemperature;
  final AdditionalWeatherParameters additionalWeatherParameters;
  final Weather weather;

  CurrentWeather(this.date, this.weather, this.sunnyDay,
      this.parametersTemperature, this.additionalWeatherParameters);

  CurrentWeather.fromJson(Map<String, dynamic> json)
      : date = new DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000),
        sunnyDay = SunnyDay.fromJson(json),
        parametersTemperature = ParametersTemperatureDefault.fromJson(json),
        additionalWeatherParameters =
        AdditionalWeatherParameters.fromJson(json),
        weather = Weather.fromJson(json['weather'][0]);
}