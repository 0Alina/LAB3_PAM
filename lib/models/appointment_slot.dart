class AppointmentSlot {
  final String day;
  final String timeRange; // ex: "09:00 AM - 05:00 PM"
  final String slotsAvailable; // înainte era disponibil doar ca argument lipsă
  final List<String> times;

  AppointmentSlot({
    required this.day,
    required this.timeRange,
    required this.slotsAvailable,
    required this.times,
  });
}
