import 'package:flutter/material.dart';

class DoctorProfileWidget extends StatelessWidget {
  const DoctorProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(60),
                child: Image.asset(
                  'assets/images/card_prof.png',
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Dr. Emma Kathrin',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Cardiologist',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF357A7B),
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'MBBS',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 24),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Expanded(
                child: InfoItem(
                  icon: Icons.star,
                  iconColor: Colors.amber,
                  label: '4.3',
                  sub: 'Rating & Reviews',
                ),
              ),
              VerticalDividerItem(),
              Expanded(
                child: InfoItem(
                  icon: Icons.work_outline,
                  iconColor: Color(0xFFB2DFDB),
                  label: '14',
                  sub: 'Years of work',
                ),
              ),
              VerticalDividerItem(),
              Expanded(
                child: InfoItem(
                  icon: Icons.people_outline,
                  iconColor: Color(0xFFB2DFDB),
                  label: '125',
                  sub: 'No. of Patients',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// Widget pentru fiecare element de info
class InfoItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String label;
  final String sub;

  const InfoItem({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.label,
    required this.sub,
  });

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
            Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        const SizedBox(height: 4),
        Text(
          sub,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

// Separator vertical
class VerticalDividerItem extends StatelessWidget {
  const VerticalDividerItem({super.key});

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
