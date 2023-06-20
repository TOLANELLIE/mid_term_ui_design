class CityModel {
  final String image;
  final String subtitle;

  CityModel({
    required this.image,
    required this.subtitle,
  });

  factory CityModel.fromJson(Map<String, dynamic> json) {
    return CityModel(
      image: json['image'],
      subtitle: json['subtitle'],
    );
  }
}
