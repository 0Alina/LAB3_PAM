import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/header_widget.dart';
import '../widgets/search_widget.dart';
import '../widgets/specialities_widget.dart';
import '../widgets/specialists_widget.dart';
import '../widgets/featured_services_widget.dart';
import '../widgets/medicines_widget.dart';
import '../widgets/most_decorated_doctors_widget.dart';
import '../widgets/most_decorated_specialities.dart';
import '../widgets/quick_actions_widget.dart';
import 'home_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final HomeController controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const HeaderWidget(),
                  const SizedBox(height: 16),
                  const SearchWidget(),
                  const SizedBox(height: 10),
                  const QuickActionsWidget(),
                  const SizedBox(height: 25),
                  SpecialitiesWidget(specialities: controller.specialities),
                  const SizedBox(height: 30),
                  SpecialistsWidget(doctors: controller.doctors),
                  const SizedBox(height: 30),
                  MedicinesWidget(medicines: controller.medicines),
                  const SizedBox(height: 30),
                  FeaturedServicesWidget(services: controller.featuredServices),
                  const SizedBox(height: 30),
                  const MostDecoratedDoctorsWidget(),
                  const SizedBox(height: 30),
                  const MostDecoratedSpecialitiesWidget(),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
