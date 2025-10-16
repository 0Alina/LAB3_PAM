import 'package:flutter/material.dart';

class DoctorLocationWidget extends StatelessWidget {
  const DoctorLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cardWidth = 160.0; // lățimea fixă a cardurilor
    final List<Map<String, String>> locations = [
      {'name': 'Shahbag', 'detail': 'BSSMU - Bangabandhu'},
      {'name': 'Bashundhara', 'detail': 'Evercare Hospital Ltd.'},
      {'name': 'Uttara', 'detail': 'Square Hospital'},
      {'name': 'Dhanmondi', 'detail': 'Ibn Sina Hospital'},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        // Titlu Location
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Text(
            'Location',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18, // mai mare pentru evidențiere
            ),
          ),
        ),

        const SizedBox(height: 8),

        // Lista orizontală cu locațiile
        SizedBox(
          height: 60, // fixăm înălțimea pentru toate cardurile
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemCount: locations.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final location = locations[index];
              return Container(
                width: cardWidth,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Numele locației, trunchiat dacă e prea lung
                    Text(
                      location['name']!,
                      style: const TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 13,
                        color: Colors.black87,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      location['detail']!,
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.grey,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              );
            },
          ),
        ),

        const SizedBox(height: 12),
      ],
    );
  }
}
