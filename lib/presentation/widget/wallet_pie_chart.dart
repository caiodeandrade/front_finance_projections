import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class WalletPieChart extends StatelessWidget {
  const WalletPieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: PieChart(
            PieChartData(
              sections: [
                PieChartSectionData(
                  value: 30,
                  color: Colors.black12,
                ),
                PieChartSectionData(
                  value: 20,
                  color: Colors.black26,
                ),
                PieChartSectionData(
                  value: 50,
                  color: Colors.black54,
                ),
              ],
              borderData: FlBorderData(show: false),
              centerSpaceRadius: 40,
            ),
          ),
        ),
        const SizedBox(width: 20), // Espaço entre o gráfico e a legenda
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            LegendItem(color: Colors.black54, title: 'Renda Fixa'),
            LegendItem(color: Colors.black12, title: 'FIIs'),
            LegendItem(color: Colors.black26, title: 'Ações'),
          ],
        ),
      ],
    );
  }
}

class LegendItem extends StatelessWidget {
  final Color color;
  final String title;

  const LegendItem({required this.color, required this.title, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 16,
          height: 16,
          color: color,
        ),
        const SizedBox(width: 8),
        Text(title),
      ],
    );
  }
}
