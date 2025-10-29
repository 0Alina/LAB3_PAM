import 'package:flutter/material.dart';
import '../models/appointment_slot.dart';

class DoctorAppointmentWidget extends StatelessWidget {
  final List<AppointmentSlot> slots;
  const DoctorAppointmentWidget({super.key, required this.slots});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Available Appointment Slots', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
        const SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: slots.map((slot) {
              return Container(
                constraints: const BoxConstraints(minWidth: 100),
                margin: const EdgeInsets.only(right: 12),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade300),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(slot.day, style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 13)),
                    const SizedBox(height: 2),
                    Text('(${slot.slotsAvailable})', style: const TextStyle(fontSize: 12, color: Colors.grey)),
                    const SizedBox(height: 4),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: slot.times.map((t) => Text(t, style: const TextStyle(fontSize: 12))).toList(),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
