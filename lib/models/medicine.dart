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
}
