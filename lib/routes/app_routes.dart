import 'package:fitness_tracker/screens/home_screen.dart';
import 'package:fitness_tracker/screens/progress_tracker_screen.dart';
import 'package:fitness_tracker/screens/settings_screen.dart';
import 'package:fitness_tracker/screens/workout_log_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => HomeScreen()),
    GetPage(name: '/log', page: () => WorkoutLogScreen()),
    GetPage(name: '/progress', page: () => ProgressTrackerScreen()),
    GetPage(name: '/settings', page: () => SettingsScreen()),
  ];
}