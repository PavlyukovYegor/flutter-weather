class SunnyDay {
  final DateTime sunriseTime;
  final DateTime sunsetTime;

  SunnyDay(this.sunriseTime, this.sunsetTime);

  SunnyDay.fromJson(Map<String, dynamic> json):
      sunriseTime = DateTime.parse(json['sunrise'].toString()),
      sunsetTime = DateTime.parse(json['sunset'].toString());
}