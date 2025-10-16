import 'package:flutter/material.dart';

class SpecialitiesWidget extends StatelessWidget {
  const SpecialitiesWidget({super.key});

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Specialities most relevant to you",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(), // scroll cu bounce
          child: Row(
            children: [
              const SizedBox(width: 4),
              _buildSpeciality('assets/icons/eye.png', "Eye Specialist"),
              const SizedBox(),
              _buildSpeciality('assets/icons/tooth.png', "Dentist"),
              const SizedBox(),
              _buildSpeciality('assets/icons/heart.png', "Cardiologist"),
              const SizedBox(),
              _buildSpeciality('assets/icons/lungs.png', "Pulmonologist"),
              const SizedBox(),
              _buildSpeciality('assets/icons/bone.png', "Physiotherapy"),
              const SizedBox(width: 4),
            ],
          ),
        ),
      ],
    );
  }
}
