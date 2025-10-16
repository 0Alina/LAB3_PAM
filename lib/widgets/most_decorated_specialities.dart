import 'package:flutter/material.dart';

class MostDecoratedSpecialitiesWidget extends StatelessWidget {
  const MostDecoratedSpecialitiesWidget({super.key});

  Widget _buildSpeciality(String assetPath, String title) {
    return SizedBox(
      width: 90,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: Colors.teal.shade50,
            radius: 30,
            child: Image.asset(
              assetPath,
              width: 30,
              height: 30,
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Lista cu specialități (poți schimba titlurile și iconițele)
    final List<Map<String, String>> specialities = [
      {'icon': 'assets/icons/eye.png', 'title': 'Eye Specialist'},
      {'icon': 'assets/icons/tooth.png', 'title': 'Dentist'},
      {'icon': 'assets/icons/child.png', 'title': 'Child Specialist'},
      {'icon': 'assets/icons/spec.png', 'title': 'Skin Specialist'},
      {'icon': 'assets/icons/bone.png', 'title': 'Physiotherapy'},
      {'icon': 'assets/icons/heart.png', 'title': 'Cardiologist'},
      {'icon': 'assets/icons/lungs.png', 'title': 'Pulmonologist'},
      {'icon': 'assets/icons/nutritionist.png', 'title': 'Nutritionist'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Text(
              "Most Decorated Specialities",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
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
        const SizedBox(height: 16),

        Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) {
                return _buildSpeciality(
                  specialities[index]['icon']!,
                  specialities[index]['title']!,
                );
              }),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(4, (index) {
                return _buildSpeciality(
                  specialities[index + 4]['icon']!,
                  specialities[index + 4]['title']!,
                );
              }),
            ),
          ],
        ),
      ],
    );
  }
}
