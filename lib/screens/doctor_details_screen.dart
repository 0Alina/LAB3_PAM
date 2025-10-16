import 'package:flutter/material.dart';
import '../widgets/doctor_header_widget.dart';
import '../widgets/doctor_profile_widget.dart';
import '../widgets/doctor_appointment_widget.dart';
import '../widgets/doctor_timing_widget.dart';
import '../widgets/doctor_location_widget.dart';
import '../widgets/doctor_tab_bar_widget.dart';

class DoctorDetailsScreen extends StatelessWidget {
  const DoctorDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: DoctorHeaderWidget(),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              DoctorProfileWidget(),
              DoctorTabBar(),
              SizedBox(height: 10),
              DoctorAppointmentWidget(),
              SizedBox(height: 16),
              DoctorTimingWidget(),
              DoctorLocationWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
