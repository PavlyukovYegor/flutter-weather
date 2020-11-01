class Coordinates {
  final double latitude;
  final double longitude;

  Coordinates(this.latitude, this.longitude);

  Coordinates.fromJson(Map<String, dynamic> json):
      latitude = json['lat'],
      longitude = json['lon'];
}