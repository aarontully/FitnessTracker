import 'package:get/get.dart';

class HomeController extends GetxController {
  var totalWorkouts = 0.obs;
  var totalDuration = 0.obs;

  void updateStats(int workouts, int duration) {
    totalWorkouts.value = workouts;
    totalDuration.value = duration;
  }
}