import 'package:flutter/material.dart';
import '../widgets/header_widget.dart';
import '../widgets/most_decorated_doctors_widget.dart';
import '../widgets/most_decorated_specialities.dart';
import '../widgets/search_widget.dart';
import '../widgets/quick_actions_widget.dart';
import '../widgets/specialities_widget.dart';
import '../widgets/specialists_widget.dart';
import '../widgets/medicines_widget.dart';
import '../widgets/featured_services_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              HeaderWidget(),
              SizedBox(height: 16),
              SearchWidget(),
              SizedBox(height: 10),
              QuickActionsWidget(),
              SizedBox(height: 25),
              SpecialitiesWidget(),
              SizedBox(height: 30),
              SpecialistsWidget(),
              SizedBox(height: 30),
              MedicinesWidget(),
              SizedBox(height: 30),
              FeaturedServicesWidget(),
              SizedBox(height: 30),
              MostDecoratedDoctorsWidget(),
              SizedBox(height: 30),
              MostDecoratedSpecialitiesWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
