import 'package:flutter/material.dart';

class FinancialAssetTile extends StatelessWidget {
  final String assetName;
  final double assetValue;
  final double percentageChange;

  const FinancialAssetTile({
    Key? key,
    required this.assetName,
    required this.assetValue,
    required this.percentageChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color iconColor = percentageChange >= 0 ? Colors.green : Colors.red;
    IconData changeIcon =
        percentageChange >= 0 ? Icons.arrow_upward : Icons.arrow_downward;

    return ListTile(
      contentPadding: const EdgeInsets.all(8.0),
      leading: const Icon(
        Icons.monetization_on,
        size: 40,
      ),
      title: Text(
        assetName,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Row(
        children: [
          Text('R\$ ${assetValue.toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 16)),
          const SizedBox(width: 8),
          Row(
            children: [
              Text('${percentageChange.toStringAsFixed(2)}%',
                  style: TextStyle(fontSize: 16, color: iconColor)),
              const SizedBox(width: 4),
              Icon(changeIcon, color: iconColor),
            ],
          ),
        ],
      ),
    );
  }
}
//AssetPage
