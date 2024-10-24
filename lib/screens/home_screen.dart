import 'package:fitness_tracker/controllers/home_controller.dart';
import 'package:fitness_tracker/controllers/progress_tracker_controller.dart';
import 'package:fitness_tracker/widgets/workout_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeController controller = Get.put(HomeController());
  final ProgressTrackerController progressController = Get.put(ProgressTrackerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitness Tracker'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to settings screen
              Get.toNamed('/settings');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome back!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              children: [
                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'This Week',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          Obx(() => Text(
                              'Total Workouts: ${controller.totalWorkouts.value}',
                            ),
                          ),
                          Obx(() => Text(
                              'Total Duration: ${controller.totalDuration.value} hours',
                            ),
                          ),
                        ],
                      ),
                    )
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Navigate to workout log screen
                    Get.toNamed('/log');
                  },
                  child: const Text('Log Workout'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to progress tracker screen
                    Get.toNamed('/progress');
                  },
                  child: const Text('View Progress'),
                ),
              ],
            ),
            const SizedBox(height: 20.0),
            Expanded(
              child: WorkoutChart(
                workouts: progressController.workouts
              ),
            ),
          ],
        ),
      ),
    );
  }
}