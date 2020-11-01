class ParametersTemperatureDefault {
  final double currentTemp;
  final double feelsLikeTemp;

  ParametersTemperatureDefault(this.currentTemp, this.feelsLikeTemp);

  ParametersTemperatureDefault.fromJson(Map<String, dynamic> json):
      currentTemp = double.tryParse(json['temp'].toString()),
      feelsLikeTemp = double.tryParse(json['feels_like'].toString());
}