import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StockFutureValueChart extends StatelessWidget {
  const StockFutureValueChart({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        gridData: FlGridData(
          show: false,
        ),
        titlesData: FlTitlesData(
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                switch (value.toInt()) {
                  case 0:
                    return const Text('Dia 1');
                  case 1:
                    return const Text('Dia 2');
                  case 2:
                    return const Text('Dia 3');
                  case 3:
                    return const Text('Dia 4');
                  case 4:
                    return const Text('Dia 5');
                  case 5:
                    return const Text('Dia 6');
                  case 6:
                    return const Text('Dia 7');
                }
                return const Text('');
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              reservedSize: 40,
              getTitlesWidget: (value, meta) {
                return Text(value.toStringAsFixed(2));
              },
            ),
          ),
        ),
        borderData: FlBorderData(
          show: true,
          border: Border.all(
            color: const Color(0xff37434d),
            width: 1,
          ),
        ),
        minX: 0,
        maxX: 6,
        minY: 30,
        maxY: 40,
        lineBarsData: [
          LineChartBarData(
            spots: [
              const FlSpot(0, 34.00), // Dia 1
              const FlSpot(1, 35.50), // Dia 2
              const FlSpot(2, 36.00), // Dia 3
              const FlSpot(3, 37.25), // Dia 4
              const FlSpot(4, 36.75), // Dia 5
              const FlSpot(5, 38.00), // Dia 6
              const FlSpot(6, 39.50), // Dia 7
            ],
            color: Colors.blue,
            barWidth: 2,
          ),
        ],
      ),
    );
  }
}
