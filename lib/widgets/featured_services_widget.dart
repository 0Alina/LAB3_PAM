import 'package:flutter/material.dart';

class FeaturedServicesWidget extends StatelessWidget {
  const FeaturedServicesWidget({super.key});

  Widget _buildMedicineCard(String img) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          img,
          height: 220,
          width: 180,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Text(
              "Featured Services",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Spacer(),
            Text(
              "View all >",
              style: TextStyle(
                fontSize: 14,
                color: Colors.teal,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: [
              _buildMedicineCard('assets/images/feature1.png'),
              _buildMedicineCard('assets/images/feature2.png'),
              _buildMedicineCard('assets/images/feature3.png'),
            ],
          ),
        ),
      ],
    );
  }
}
