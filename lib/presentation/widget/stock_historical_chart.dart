import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StockChart extends StatelessWidget {
  const StockChart({super.key});

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
              showTitles: true,
              reservedSize: 40,
              getTitlesWidget: (value, meta) {
                return Text(value.toString());
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
        maxX: 11,
        minY: 25,
        maxY: 50,
        lineBarsData: [
          LineChartBarData(
            spots: [
              const FlSpot(0, 30), // Janeiro
              const FlSpot(1, 31), // Fevereiro
              const FlSpot(2, 32), // Março
              const FlSpot(3, 33), // Abril
              const FlSpot(4, 34), // Maio
              const FlSpot(5, 35), // Junho
              const FlSpot(6, 37), // Julho
              const FlSpot(7, 36), // Agosto
              const FlSpot(8, 38), // Setembro
              const FlSpot(9, 39), // Outubro
              const FlSpot(10, 38), // Novembro
              const FlSpot(11, 37), // Dezembro
            ],
            color: Colors.blue,
            barWidth: 2,
          ),
        ],
      ),
    );
  }
}
