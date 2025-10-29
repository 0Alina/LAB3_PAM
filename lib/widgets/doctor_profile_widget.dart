import 'package:flutter/material.dart';
import '../models/doctor.dart';

class DoctorProfileWidget extends StatelessWidget {
  final Doctor doctor;
  const DoctorProfileWidget({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset(
                  doctor.imagePath,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(doctor.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                    const SizedBox(height: 4),
                    Text(doctor.specialization, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF357A7B))),
                    const SizedBox(height: 2),
                    Text(doctor.degree, style: const TextStyle(fontSize: 14, color: Colors.grey)),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: _InfoItem(icon: Icons.star, iconColor: Colors.amber, label: doctor.rating.toString(), sub: 'Rating & Reviews'),
              ),
              _VerticalDividerItem(),
              Expanded(
                child: _InfoItem(icon: Icons.work_outline, iconColor: const Color(0xFFB2DFDB), label: doctor.yearsOfExperience.toString(), sub: 'Years of work'),
              ),
              _VerticalDividerItem(),
              Expanded(
                child: _InfoItem(icon: Icons.people_outline, iconColor: const Color(0xFFB2DFDB), label: doctor.numberOfPatients.toString(), sub: 'No. of Patients'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String label;
  final String sub;
  const _InfoItem({required this.icon, required this.iconColor, required this.label, required this.sub});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 20, color: iconColor),
            const SizedBox(width: 4),
            Text(label, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ],
        ),
        const SizedBox(height: 4),
        Text(sub, style: const TextStyle(fontSize: 12, color: Colors.grey)),
      ],
    );
  }
}

class _VerticalDividerItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: 1,
      height: 36,
      color: Colors.grey.withOpacity(0.3),
    );
  }
}
