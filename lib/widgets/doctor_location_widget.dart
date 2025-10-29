import 'package:flutter/material.dart';

class DoctorLocationWidget extends StatelessWidget {
  final String location;
  const DoctorLocationWidget({super.key, required this.location});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          const Icon(Icons.location_on_outlined, color: Colors.teal),
          const SizedBox(width: 8),
          Expanded(child: Text(location, style: const TextStyle(fontSize: 14))),
        ],
      ),
    );
  }
}
