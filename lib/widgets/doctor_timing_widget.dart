import 'package:flutter/material.dart';

class DoctorTimingWidget extends StatelessWidget {
  const DoctorTimingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> weekSchedule = [
      {'day': 'Monday', 'time': '09:00 AM - 05:00 PM'},
      {'day': 'Tuesday', 'time': 'Closed'},
      {'day': 'Wednesday', 'time': '09:00 AM - 05:00 PM'},
      {'day': 'Thursday', 'time': '09:00 AM - 05:00 PM'},
      {'day': 'Friday', 'time': '09:00 AM - 05:00 PM'},
      {'day': 'Saturday', 'time': '10:00 AM - 03:00 PM'},
      {'day': 'Sunday', 'time': 'Closed'},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Titlu Timing
          Text(
            'Timing',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20, // mai mare pentru evidențiere
            ),
          ),
          const SizedBox(height: 12),

          // Lista orizontală cu zilele și orele
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: weekSchedule.map((day) {
                return Container(
                  constraints: const BoxConstraints(minWidth: 100),
                  padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        day['day']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: Colors.black87,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        day['time']!,
                        style: const TextStyle(
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),

          const SizedBox(height: 12),
        ],
      ),
    );
  }
}