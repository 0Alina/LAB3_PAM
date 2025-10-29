import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/search_widget.dart';
import '../widgets/specialities_widget.dart';
import '../widgets/specialists_widget.dart';
import '../widgets/featured_services_widget.dart';
import '../widgets/medicines_widget.dart';
import '../widgets/most_decorated_doctors_widget.dart';
import '../widgets/most_decorated_specialities.dart';
import '../widgets/quick_actions_widget.dart';

import '../models/doctor.dart';
import '../models/speciality.dart';
import '../models/medicine.dart';
import '../models/featured_service.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Doctor> doctors = [
      Doctor(
        name: "Dr. Ahmed Khan",
        specialization: "General Practitioner",
        degree: "MBBS",
        clinic: "City Clinic",
        yearsOfExperience: 5,
        numberOfPatients: 120,
        rating: 4.2,
        imagePath: "assets/images/doc1.png",
        price: "৳300",
      ),
      Doctor(
        name: "Dr. Warner Miller",
        specialization: "General Practitioner",
        degree: "MBBS",
        clinic: "Sunrise Clinic",
        yearsOfExperience: 6,
        numberOfPatients: 98,
        rating: 4.3,
        imagePath: "assets/images/doc2.png",
        price: "৳300",
      ),
      Doctor(
        name: "Dr. Emily Rose",
        specialization: "Cardiologist",
        degree: "MD",
        clinic: "Heart Care",
        yearsOfExperience: 10,
        numberOfPatients: 150,
        rating: 4.8,
        imagePath: "assets/images/cardiologist.png",
        price: "৳450",
      ),
    ];

    final List<FeaturedService> featuredServices = [
      FeaturedService(title: "Cardiology", imagePath: "assets/images/feature1.png"),
      FeaturedService(title: "Dentistry", imagePath: "assets/images/feature2.png"),
      FeaturedService(title: "Pediatrics", imagePath: "assets/images/feature3.png"),
    ];

    final List<Medicine> medicines = [
      Medicine(
        name: "Amoxicillin",
        imagePath: "assets/images/amoxicilin.png",
        price: "৳10.00",
        unit: "/ Strip",
        dosage: "200mg • 10 Capsule",
      ),
      Medicine(
        name: "Acetylcystein",
        imagePath: "assets/images/acetyl.png",
        price: "৳12.50",
        unit: "/ Strip",
        dosage: "200mg • 10 Capsule",
      ),
    ];

    final List<Speciality> specialities = [
      Speciality(title: "Eye Specialist", iconPath: "assets/icons/eye.png"),
      Speciality(title: "Dentist", iconPath: "assets/icons/tooth.png"),
      Speciality(title: "Child Specialist", iconPath: "assets/icons/child.png"),
      Speciality(title: "Skin Specialist", iconPath: "assets/icons/spec.png"),
      Speciality(title: "Physiotherapy", iconPath: "assets/icons/bone.png"),
      Speciality(title: "Cardiologist", iconPath: "assets/icons/heart.png"),
      Speciality(title: "Pulmonologist", iconPath: "assets/icons/lungs.png"),
      Speciality(title: "Nutritionist", iconPath: "assets/icons/nutritionist.png"),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16), // aici ajustezi spațiul
            child: Column(
              children: [
                const HeaderWidget(),
                const SizedBox(height: 16),
                const SearchWidget(),
                const SizedBox(height: 10),
                const QuickActionsWidget(),
                const SizedBox(height: 25),
                SpecialitiesWidget(specialities: specialities),
                const SizedBox(height: 30),
                SpecialistsWidget(doctors: doctors),
                const SizedBox(height: 30),
                MedicinesWidget(medicines: medicines),
                const SizedBox(height: 30),
                FeaturedServicesWidget(services: featuredServices),
                const SizedBox(height: 30),
                const MostDecoratedDoctorsWidget(),
                const SizedBox(height: 30),
                const MostDecoratedSpecialitiesWidget(),
              ],
            ),
          ),
        ),
      ),
    );

  }
}
