import 'dart:ui'; // Add this import statement
import 'package:get/get.dart';

class LanguageController extends GetxController {
  static LanguageController get to => Get.find();

  var currentLocale = Locale('en', 'US').obs;

  void changeLocale(Locale newLocale) {
    currentLocale.value = newLocale;
  }
}
