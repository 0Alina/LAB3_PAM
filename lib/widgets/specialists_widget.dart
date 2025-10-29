import 'package:flutter/material.dart';
import '../models/doctor.dart';
import '../screens/doctor_details_screen.dart';

class SpecialistsWidget extends StatefulWidget {
  final List<Doctor> doctors;
  const SpecialistsWidget({super.key, required this.doctors});

  @override
  State<SpecialistsWidget> createState() => _SpecialistsWidgetState();
}

class _SpecialistsWidgetState extends State<SpecialistsWidget> {
  late List<bool> _favorites;

  @override
  void initState() {
    super.initState();
    _favorites = List<bool>.filled(widget.doctors.length, false);
  }

  Widget _buildDoctorCard(Doctor doctor, int index) {
    return Padding(
      padding: EdgeInsets.only(left: index == 0 ? 9 : 7, right: 7),
      child: Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => DoctorDetailsScreen(doctor: doctor),
                ),
              );
            },
            child: Container(
              width: 200,
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
                    child: Image.asset(
                      doctor.imagePath,
                      height: 180,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(doctor.specialization, style: const TextStyle(fontSize: 13, color: Colors.grey)),
                        const SizedBox(height: 2),
                        Text(doctor.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black87)),
                        const SizedBox(height: 8),
                        Divider(color: Colors.grey.shade300, thickness: 1),
                        const SizedBox(height: 4),
                        Text(doctor.price, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ),
          Positioned(
            top: 12,
            left: 12,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _favorites[index] = !_favorites[index];
                });
              },
              child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(color: Colors.black.withOpacity(0.15), blurRadius: 4, offset: const Offset(0, 2))
                  ],
                ),
                child: Icon(_favorites[index] ? Icons.favorite : Icons.favorite_border, color: _favorites[index] ? Colors.redAccent : Colors.grey),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Text("Specialists", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
            Spacer(),
            Text("View all >", style: TextStyle(fontSize: 14, color: Colors.teal, fontWeight: FontWeight.w500)),
          ],
        ),
        const SizedBox(height: 12),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            children: List.generate(widget.doctors.length, (index) => _buildDoctorCard(widget.doctors[index], index)),
          ),
        ),
      ],
    );
  }
}
