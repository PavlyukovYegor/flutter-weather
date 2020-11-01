import 'package:weather_app/domain/coords.dart';

class User {
  final String email;
  final Coordinates coordinates;

  User(this.email, this.coordinates);

  User.fromJson(Map<String, dynamic> json):
      email = json['email'],
      coordinates = json['coordinates'];
}