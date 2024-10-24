import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsController extends GetxController {
  var darkMode = false.obs;
  var notifications = false.obs;

  @override
  void onInit() {
    super.onInit();
    loadSettings();
  }

  void loadSettings() {
    // Load settings from database
    // example: darkMode.value = db.getDarkMode();
    // example: notifications.value = db.getNotifications();
  }

  void toggleDarkMode(bool value) {
    darkMode.value = value;
    if (value) {
      // Set dark mode
      Get.changeTheme(ThemeData.dark());
    } else {
      // Set light mode
      Get.changeTheme(ThemeData.light());
    }
  }

  void toggleNotifications(bool value) {
    notifications.value = value;
    // Save to database
    // example: db.setNotifications(value);
  }
}