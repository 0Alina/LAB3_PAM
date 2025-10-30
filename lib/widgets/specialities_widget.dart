import 'package:flutter/material.dart';
import '../models/speciality.dart';

class SpecialitiesWidget extends StatelessWidget {
  // lista citită din JSON de controller
  final List<Speciality> specialities;
  const SpecialitiesWidget({super.key, required this.specialities});

  Widget _buildSpeciality(Speciality speciality) {
    return SizedBox(
      width: 90,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: Colors.teal.shade50,
            radius: 30,
            child: Image.asset(speciality.iconPath, width: 30, height: 30, fit: BoxFit.contain),
          ),
          const SizedBox(height: 4),
          Text(speciality.title, style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600), textAlign: TextAlign.center),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Specialities most relevant to you", style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600)),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            // parcurge lista și afișează fiecare specialitate
            children: specialities.map((s) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: _buildSpeciality(s),
            )).toList(),
          ),
        ),
      ],
    );
  }
}
