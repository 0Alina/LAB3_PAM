import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../models/doctor.dart';
import '../../models/medicine.dart';
import '../../models/speciality.dart';
import '../../models/featured_service.dart';

class HomeController extends GetxController {
  // aici se stochează obiectele rezultate din conversia JSON în model Dart
  // tranformă lista într-un observable
  var doctors = <Doctor>[].obs;
  var medicines = <Medicine>[].obs;
  var specialities = <Speciality>[].obs;
  var featuredServices = <FeaturedService>[].obs;
  var isLoading = true.obs;


  @override
  void onInit() {
    super.onInit();
    loadData();
  }

  Future<void> loadData() async {
    try {
      // se citește fișierul JSON sub formă de text brut
      final String data = await rootBundle.loadString('lib/data/home_data.json');
      // "decodarea" - se transformă textul JSON într-o str. nativă Dart)
      final jsonResult = json.decode(data);

      // se ia lista de doctori din JSON și fiecare element este tranformat în obiect Doctor
      doctors.value = (jsonResult['doctors'] as List)
          .map((d) => Doctor.fromJson(d))
          .toList();

      medicines.value = (jsonResult['medicines'] as List)
          .map((m) => Medicine.fromJson(m))
          .toList();

      specialities.value = (jsonResult['specialities'] as List)
          .map((s) => Speciality.fromJson(s))
          .toList();

      featuredServices.value = (jsonResult['featuredServices'] as List)
          .map((f) => FeaturedService.fromJson(f))
          .toList();
    } catch (e) {
      print('Error loading JSON: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
