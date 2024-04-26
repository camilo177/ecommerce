import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_mobile/app.dart';
import 'package:app_mobile/modules/authentication/controllers/onboarding/language_controller.dart';

void main() {
  // Initialize GetX bindings
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize the LanguageController
  Get.put(LanguageController());

  // Run the app
  runApp(const App());
}
