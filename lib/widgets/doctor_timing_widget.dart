import 'package:flutter/material.dart';

class DoctorTimingWidget extends StatelessWidget {
  final List<Map<String, String>> weekSchedule;
  const DoctorTimingWidget({super.key, required this.weekSchedule});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Timing', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          const SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: weekSchedule.map((day) {
                return Container(
                  constraints: const BoxConstraints(minWidth: 100),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  margin: const EdgeInsets.only(right: 12),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(day['day']!, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 13, color: Colors.black87)),
                      const SizedBox(height: 2),
                      Text(day['time']!, style: const TextStyle(fontSize: 11, color: Colors.grey)),
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
