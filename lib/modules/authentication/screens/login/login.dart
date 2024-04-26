 import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:app_mobile/modules/authentication/controllers/onboarding/language_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.language),
            onPressed: () {
              _showLanguageDialog(context);
            },
          ),
        ],
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _changeLanguage();
          },
          child: Obx(
            () => Text(
              LanguageController.to.currentLocale.value.languageCode == 'en'
                  ? 'Hello, World!'
                  : '¡Hola, Mundo!',
            ),
          ),
        ),
      ),
    );
  }

  void _showLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Select Language'),
          content: SingleChildScrollView(
            child: Column(
              children: [
                ListTile(
                  title: Text('English'),
                  onTap: () {
                    _changeLanguage('en', 'US');
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text('Spanish'),
                  onTap: () {
                    _changeLanguage('es', 'ES');
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _changeLanguage([String? languageCode, String? countryCode]) {
    if (languageCode != null && countryCode != null) {
      LanguageController.to.changeLocale(Locale(languageCode, countryCode));
    }
  }
}
