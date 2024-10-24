import 'package:fitness_tracker/controllers/workout_log_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkoutLogScreen extends StatelessWidget {
  WorkoutLogScreen({super.key});

  final WorkoutLogController controller = Get.put(WorkoutLogController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Log Workout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Workout Type',
                ),
                onChanged: (value) {
                  controller.setWorkoutType(value);
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Duration (minutes)',
                ),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  controller.setDuration(int.parse(value));
                },
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  controller.saveWorkout();
                },
                child: const Text('Save Workout'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}