import 'appointment_slot.dart';

class Doctor {
  final String name;
  final String specialization;
  final String degree;
  final String clinic;
  final int yearsOfExperience;
  final int numberOfPatients;
  final double rating;
  final String imagePath;
  final String price;

  // Noul câmp pentru program
  final List<AppointmentSlot> slots;

  // Noul câmp pentru programul pe săptămână
  final List<Map<String, String>> weekSchedule;

  Doctor({
    required this.name,
    required this.specialization,
    required this.degree,
    required this.clinic,
    required this.yearsOfExperience,
    required this.numberOfPatients,
    required this.rating,
    required this.imagePath,
    required this.price,
    required this.slots,
    required this.weekSchedule,
  });
}
