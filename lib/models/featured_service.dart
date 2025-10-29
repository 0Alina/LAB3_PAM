class FeaturedService {
  final String title;
  final String imagePath;

  FeaturedService({
    required this.title,
    required this.imagePath,
  });

  factory FeaturedService.fromJson(Map<String, dynamic> json) {
    return FeaturedService(
      title: json['title'],
      imagePath: json['imagePath'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'imagePath': imagePath,
    };
  }
}
