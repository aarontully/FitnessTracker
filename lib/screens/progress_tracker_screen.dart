import 'package:fitness_tracker/controllers/progress_tracker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProgressTrackerScreen extends StatelessWidget {
  ProgressTrackerScreen({super.key});

  final ProgressTrackerController controller = Get.put(ProgressTrackerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Tracker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(() {
          if(controller.workouts.isEmpty) {
            return const Center(child: Text('No workouts logged yet.'));
          }
          return ListView.builder(
            itemCount: controller.workouts.length,
            itemBuilder: (context, index) {
              final workout = controller.workouts[index];
              return ListTile(
                title: Text(workout.workoutType),
                subtitle: Text('Duration: ${workout.duration} minutes'),
              );
            },
          );
        })
      ),
    );
  }
}