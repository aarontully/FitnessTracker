import 'package:fitness_tracker/routes/app_routes.dart';
import 'package:fitness_tracker/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fitness Tracker',
      initialRoute: '/',
      getPages: AppRoutes.routes,
      home: HomeScreen(),
    );
  }
}
