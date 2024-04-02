
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartSample2 extends StatelessWidget {
  final double? onTimeValue;
  final double? lateValue;
  final double? onGoingValue;
  final double? radiusValue;
  const PieChartSample2({super.key, required this.onTimeValue, required this.lateValue, required this.onGoingValue, required this.radiusValue});

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(
            color: const Color.fromARGB(255, 222, 34, 57),
            value: lateValue,
            showTitle: false,
            radius: radiusValue,
          ),
          PieChartSectionData(
            color: const Color.fromARGB(255, 217, 217, 217),
            value: onGoingValue,
            showTitle: false,
            radius: radiusValue,
          ),
          PieChartSectionData(
            color: const Color.fromARGB(255, 34, 222, 154),
            value: onTimeValue,
            showTitle: false,
            radius: radiusValue,
          ),
        ],
      ),
    );
  }
}