import 'package:fitness_tracker/controllers/settings_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  SettingsScreen({super.key});

  final SettingsController controller = Get.put(SettingsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: ListView(
        children: [
          Obx(() => ListTile(
              title: const Text('Dark Mode'),
              trailing: Switch(
                value: controller.darkMode.value,
                onChanged: controller.toggleDarkMode,
              ),
            ),
          ),
          Obx(() => ListTile(
              title: const Text('Notifications'),
              trailing: Switch(
                value: controller.notifications.value,
                onChanged: controller.toggleNotifications,
              ),
            ),
          ),
        ],
      )
    );
  }
}