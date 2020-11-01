class Weather {
  final String id;
  final String main;
  final String description;
  final String iconName;

  Weather(this.id, this.main, this.description, this.iconName);

  Weather.fromJson(Map<String, dynamic> json)
      : id = json['id'].toString(),
        main = json['main'],
        description = json['description'],
        iconName = json['icon'];
}
