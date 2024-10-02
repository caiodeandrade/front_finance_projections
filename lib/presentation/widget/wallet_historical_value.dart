import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WalletHistoricChart extends StatelessWidget {
  const WalletHistoricChart({super.key});

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
                    return const Text('Jan');
                  case 1:
                    return const Text('Feb');
                  case 2:
                    return const Text('Mar');
                  case 3:
                    return const Text('Apr');
                  case 4:
                    return const Text('May');
                  case 5:
                    return const Text('Jun');
                  case 6:
                    return const Text('Jul');
                  case 7:
                    return const Text('Aug');
                  case 8:
                    return const Text('Sep');
                  case 9:
                    return const Text('Oct');
                  case 10:
                    return const Text('Nov');
                  case 11:
                    return const Text('Dec');
                }
                return const Text('');
              },
            ),
          ),
          leftTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
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
        maxX: 11,
        minY: 4000,
        maxY: 11000,
        lineBarsData: [
          LineChartBarData(
            spots: [
              const FlSpot(0, 5000),
              const FlSpot(1, 7500),
              const FlSpot(2, 8000),
              const FlSpot(3, 7000),
              const FlSpot(4, 9000),
              const FlSpot(5, 10000),
              const FlSpot(6, 10250),
              const FlSpot(7, 9500),
              const FlSpot(8, 9800),
              const FlSpot(9, 10000),
              const FlSpot(10, 10300),
              const FlSpot(11, 10000),
            ],
            color: Colors.blue,
            barWidth: 2,
          ),
        ],
      ),
    );
  }
}
