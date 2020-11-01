import 'package:weather_app/domain/additional_weather_parameters.dart';
import 'package:weather_app/domain/parameters_temperature_daily.dart';
import 'package:weather_app/domain/parameters_temperature_default.dart';
import 'package:weather_app/domain/sunny_day.dart';
import 'package:weather_app/domain/weather.dart';

class DailyWeather {
  final DateTime date;
  final SunnyDay sunnyDay;
  final ParametersTemperatureDaily parametersTemperature;
  final AdditionalWeatherParameters additionalWeatherParameters;
  final Weather weather;

  DailyWeather(this.date, this.weather, this.sunnyDay,
      this.parametersTemperature, this.additionalWeatherParameters);

  DailyWeather.fromJson(Map<String, dynamic> json)
      : date = DateTime.parse(json['dt'].toString()),
        sunnyDay = SunnyDay.fromJson(json),
        parametersTemperature = ParametersTemperatureDaily.fromJson(json['temp']),
        additionalWeatherParameters =
            AdditionalWeatherParameters.fromJson(json),
        weather = Weather.fromJson(json['weather'][0]);
}
