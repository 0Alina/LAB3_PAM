import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DoctorDetailsController extends GetxController {
  var appointment = {}.obs;
  var timing = [].obs;
  var locations = [].obs;

  @override
  void onInit() {
    super.onInit();
    loadDoctorDetails();
  }

  Future<void> loadDoctorDetails() async {
    final String jsonString =
    await rootBundle.loadString('lib/data/doctor_details.json');
    final data = json.decode(jsonString);

    appointment.value = data['appointment'];
    timing.value = data['timing'];
    locations.value = data['locations'];
  }
}
