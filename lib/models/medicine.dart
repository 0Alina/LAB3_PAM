class Medicine {
  final String name;
  final String imagePath;
  final String price;
  final String unit; // ex: "/ Strip"
  final String dosage; // ex: "200mg • 10 Capsule"

  Medicine({
    required this.name,
    required this.imagePath,
    required this.price,
    required this.unit,
    required this.dosage,
  });

  factory Medicine.fromJson(Map<String, dynamic> json) {
    return Medicine(
      name: json['name'],
      imagePath: json['imagePath'],
      price: json['price'],
      unit: json['unit'],
      dosage: json['dosage'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'imagePath': imagePath,
      'price': price,
      'unit': unit,
      'dosage': dosage,
    };
  }
}
