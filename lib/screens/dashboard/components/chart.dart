import 'package:admin/constants.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              startDegreeOffset: -90,
              centerSpaceRadius: 70,
              sections: pieData,
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: defaultPadding),
                Text(
                  '29.1',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        height: 0.5,
                      ),
                ),
                Text("of 128GB"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

List<PieChartSectionData> pieData = [
  PieChartSectionData(
    value: 40,
    color: Colors.lightBlue,
    radius: 20,
    showTitle: false,
  ),
  PieChartSectionData(
    value: 20,
    color: Colors.yellow,
    radius: 19,
    showTitle: false,
  ),
  PieChartSectionData(
    value: 10,
    color: primaryColor.withOpacity(0.1),
    radius: 16,
    showTitle: false,
  ),
  PieChartSectionData(
    value: 15,
    color: Colors.green,
    radius: 20,
    showTitle: false,
  ),
  PieChartSectionData(
    value: 25,
    color: Color(0xFFEE2727),
    radius: 17,
    showTitle: false,
  ),
];
