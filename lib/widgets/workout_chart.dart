import 'package:fitness_tracker/models/workout_model.dart';
import 'package:fitness_tracker/resources/app_colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WorkoutChart extends StatefulWidget {
  final List<Workout> workouts;

  WorkoutChart({
    super.key,
    required this.workouts,
  });

  List<Color> get availableColors => <Color>[
    AppColors.contentColorPurple,
    AppColors.contentColorYellow,
    AppColors.contentColorBlue,
    AppColors.contentColorOrange,
    AppColors.contentColorPink,
    AppColors.contentColorRed,
  ];

  final Color barBackgroundColor = Colors.white.darken().withOpacity(0.3);
  final Color barColor = AppColors.contentColorGreen;
  final Color touchedBarColor = AppColors.contentColorGreen;

  @override
  State<WorkoutChart> createState() => _WorkoutChartState();
}

class _WorkoutChartState extends State<WorkoutChart> {
  final Duration animDuration = const Duration(milliseconds: 250);
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: BarChart(
                      BarChartData(
                        alignment: BarChartAlignment.spaceAround,
                        gridData: const FlGridData(show: false),
                        titlesData: FlTitlesData(rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false))),
                        barGroups: widget.workouts.map((workout) {
                          final int index = widget.workouts.indexOf(workout);
                          return BarChartGroupData(
                            x: index,
                            barRods: [
                              BarChartRodData(
                                toY: workout.duration.toDouble(),
                                color: widget.barColor,
                                width: 22,
                                backDrawRodData: BackgroundBarChartRodData(
                                  show: true,
                                  toY: 20,
                                  color: widget.barBackgroundColor,
                                ),
                              ),
                            ],
                            showingTooltipIndicators: [],
                          );
                        }).toList(),
                      )
                    ),
                  )
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}