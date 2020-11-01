class AdditionalWeatherParameters {
  final double pressure;
  final int humidity;
  final int clouds;
  final double visibility;
  final double windSpeed;

  AdditionalWeatherParameters(this.pressure, this.humidity, this.clouds,
      this.visibility, this.windSpeed);

  AdditionalWeatherParameters.fromJson(Map<String, dynamic> json)
      : pressure = double.tryParse(json['pressure'].toString()),
        humidity = json['humidity'],
        clouds = json['clouds'],
        visibility = double.tryParse(json['visibility'].toString()),
        windSpeed = double.tryParse(json['wind_speed'].toString());
}
