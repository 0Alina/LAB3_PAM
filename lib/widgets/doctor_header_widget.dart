import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../models/doctor.dart';

class DoctorHeaderWidget extends StatelessWidget {
  final Doctor doctor;
  const DoctorHeaderWidget({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios_new, size: 20),
                onPressed: () => Navigator.of(context).pop(),
              ),
              const SizedBox(width: 8),
              Text(
                doctor.specialization,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Iconsax.star, size: 20),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Iconsax.share, size: 20),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
