class ParametersTemperatureDaily {
  final double morn;
  final double day;
  final double eve;
  final double night;
  final double min;
  final double max;

  ParametersTemperatureDaily(this.morn, this.day, this.eve, this.night,
      this.min, this.max);

  ParametersTemperatureDaily.fromJson(Map<String, dynamic> json)
      : morn = double.tryParse(json['morn'].toString()),
        day = double.tryParse(json['day'].toString()),
        eve = double.tryParse(json['eve'].toString()),
        night = double.tryParse(json['night'].toString()),
        min = double.tryParse(json['min'].toString()),
        max = double.tryParse(json['max'].toString());
}
