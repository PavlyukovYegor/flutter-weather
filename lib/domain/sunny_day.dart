class SunnyDay {
  final DateTime sunriseTime;
  final DateTime sunsetTime;

  SunnyDay(this.sunriseTime, this.sunsetTime);

  SunnyDay.fromJson(Map<String, dynamic> json):
      sunriseTime = new DateTime.fromMillisecondsSinceEpoch(json['sunrise'] * 1000),
      sunsetTime = new DateTime.fromMillisecondsSinceEpoch(json['sunset'] * 1000);
}