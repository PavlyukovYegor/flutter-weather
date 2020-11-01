import 'package:weather_app/domain/coords.dart';
import 'package:weather_app/domain/current_weather.dart';
import 'package:weather_app/domain/daily_weather.dart';
import 'package:weather_app/domain/hourly_weather.dart';

class UsersWeather {
  final List<DailyWeather> dailyWeather;
  final List<HourlyWeather> hourlyWeather;
  final CurrentWeather currentWeather;
  final Coordinates coordinates;

  UsersWeather(this.dailyWeather, this.hourlyWeather, this.coordinates,
      this.currentWeather);

  UsersWeather.fromJson(Map<String, dynamic> json)
      : currentWeather = CurrentWeather.fromJson(json['current']),
        coordinates = Coordinates.fromJson(json),
        dailyWeather = List<DailyWeather>.from(
            json['daily'].map((item) => DailyWeather.fromJson(item))),
        hourlyWeather = List<HourlyWeather>.from(
            json['hourly'].map((item) => HourlyWeather.fromJson(item)));
}
