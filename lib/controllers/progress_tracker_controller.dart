import 'package:fitness_tracker/models/workout_model.dart';
import 'package:get/get.dart';

class ProgressTrackerController extends GetxController {
  var workouts = <Workout>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchWorkouts();
  }

  void fetchWorkouts() {
    // Fetch workouts from database
    // Example: workouts.value = await database.fetchWorkouts();
    // For now, we'll just add some dummy data
    final dummyWorkouts = [
      Workout(
        workoutType: 'Running',
        duration: 30,
      ),
      Workout(
        workoutType: 'Cycling',
        duration: 45,
      ),
      Workout(
        workoutType: 'Swimming',
        duration: 60,
      ),
    ];

    workouts.value = dummyWorkouts;
  }

  int get totalWorkouts => workouts.length;

  int get totalDuration => workouts.fold(0, (sum, workout) => sum + workout.duration);
}