import 'package:flutter/material.dart';

class DoctorAppointmentWidget extends StatefulWidget {
  const DoctorAppointmentWidget({super.key});

  @override
  State<DoctorAppointmentWidget> createState() =>
      _DoctorAppointmentWidgetState();
}

class _DoctorAppointmentWidgetState extends State<DoctorAppointmentWidget> {
  int selectedDayIndex = 0;
  int selectedSlotIndex = -1;

  final List<Map<String, String>> days = [
    {'day': 'Today', 'slots': '(No Slot)'},
    {'day': 'Tomorrow', 'slots': '(20 Slot)'},
    {'day': '20 Oct', 'slots': '(15 Slot)'},
    {'day': '21 Oct', 'slots': '(18 Slot)'},
    {'day': '22 Oct', 'slots': '(12 Slot)'},
  ];

  final List<String> slots = [
    '06:00 - 06:30',
    '06:30 - 07:00',
    '07:00 - 07:30',
    '08:00 - 08:30',
    '08:30 - 09:00',
  ];

  final Color lightGreen = const Color(0xFFD8F3F4);
  final Color darkGreen = const Color(0xFF357A7B);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
            decoration: BoxDecoration(
              color: lightGreen,
              borderRadius:
              const BorderRadius.vertical(top: Radius.circular(12)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'In-Clinic Appointment',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  '৳1,000',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: darkGreen,
                  ),
                ),
              ],
            ),
          ),

          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Evercare Hospital Ltd.',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'Bashundhara, Dhaka',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: darkGreen,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '2 More Clinic',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 4),

          // Wait time
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              '20 mins or less wait time',
              style: TextStyle(fontSize: 11, color: Colors.grey.shade500),
            ),
          ),

          Divider(color: Colors.grey.shade300, thickness: 1),

          const SizedBox(height: 8),

          SizedBox(
            height: 50,
            child: Stack(
              children: [

                Positioned(
                  bottom: 10,
                  left: 16,
                  right: 16,
                  child: Container(
                    height: 3,
                    color: lightGreen,
                  ),
                ),
                ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: days.length,
                  separatorBuilder: (_, __) => const SizedBox(width: 24),
                  itemBuilder: (context, index) {
                    final day = days[index];
                    bool isSelected = selectedDayIndex == index;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDayIndex = index;
                          selectedSlotIndex = -1;
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                day['day']!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 4),
                              Text(
                                day['slots']!,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: day['slots']!
                                      .toLowerCase()
                                      .contains('no slot')
                                      ? Colors.grey.shade700
                                      : Colors.blue,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),

                          Container(
                            height: 3,
                            width: isSelected
                                ? day['day']!.length * 8.0 +
                                day['slots']!.length * 6.0
                                : 0,
                            color: darkGreen,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          ),

          const SizedBox(height: 12),

          SizedBox(
            height: 40,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: slots.length,
              separatorBuilder: (_, __) => const SizedBox(width: 8),
              itemBuilder: (context, index) {
                bool isSelected = selectedSlotIndex == index;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedSlotIndex = index;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: lightGreen,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                        color: isSelected ? darkGreen : Colors.transparent,
                      ),
                    ),
                    child: Text(
                      slots[index],
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: darkGreen,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
