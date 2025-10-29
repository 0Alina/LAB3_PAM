class Speciality {
  final String title;
  final String iconPath;

  Speciality({
    required this.title,
    required this.iconPath,
  });

  factory Speciality.fromJson(Map<String, dynamic> json) {
    return Speciality(
      title: json['title'],
      iconPath: json['iconPath'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'iconPath': iconPath,
    };
  }
}
