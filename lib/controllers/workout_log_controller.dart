import 'package:get/get.dart';

class WorkoutLogController extends GetxController {
  var workoutType = ''.obs;
  var duration = 0.obs;

  void setWorkoutType(String type) {
    workoutType.value = type;
  }

  void setDuration(int duration) {
    this.duration.value = duration;
  }

  void saveWorkout() {
    // Save workout to database
  }
}