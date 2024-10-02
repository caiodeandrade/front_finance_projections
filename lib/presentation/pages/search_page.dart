import 'package:finance_projections/presentation/pages/asset_page.dart';
import 'package:flutter/material.dart';

import '../widget/bottom_app_bar.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final List<Map<String, dynamic>> _items = [
    {'name': 'Petrobras (PETR3)', 'value': 30.75, 'percentageChange': 3.5},
    {'name': 'Vale (VALE3)', 'value': 90.50, 'percentageChange': -2.1},
    {'name': 'Itaú Unibanco (ITUB4)', 'value': 45.00, 'percentageChange': 1.8},
    {'name': 'Ambev (ABEV3)', 'value': 16.20, 'percentageChange': 0.5},
    {
      'name': 'Magazine Luiza (MGLU3)',
      'value': 25.30,
      'percentageChange': -1.0
    },
    {
      'name': 'Banco do Brasil (BBAS3)',
      'value': 56.40,
      'percentageChange': 2.3
    },
    {'name': 'Banco Bradesco (BBDC3)', 'value': 26.10, 'percentageChange': 1.1},
    {'name': 'Lojas Renner (LREN3)', 'value': 30.00, 'percentageChange': 4.0},
    {'name': 'Natura (NATU3)', 'value': 34.15, 'percentageChange': -0.8},
    {'name': 'Suzano (SUZB3)', 'value': 50.25, 'percentageChange': 3.0},
    {'name': 'Klabin (KLBN11)', 'value': 25.75, 'percentageChange': -1.5},
    {'name': 'Eletrobras (ELET3)', 'value': 48.60, 'percentageChange': 2.7},
    {
      'name': 'Telefônica Brasil (VIVT3)',
      'value': 36.10,
      'percentageChange': 0.0
    },
    {
      'name': 'Vale Fertilizantes (VALF3)',
      'value': 22.90,
      'percentageChange': 2.1
    },
    {'name': 'BRF (BRFS3)', 'value': 31.40, 'percentageChange': 1.9},
    {'name': 'JBS (JBSS3)', 'value': 35.85, 'percentageChange': -0.6},
    {'name': 'Rumo (RAIL3)', 'value': 27.40, 'percentageChange': 4.5},
    {'name': 'Cielo (CIEL3)', 'value': 10.60, 'percentageChange': -2.0},
    {'name': 'Banco Inter (BIDI11)', 'value': 45.00, 'percentageChange': 3.2},
    {'name': 'BRK Ambiental (BRKM3)', 'value': 29.15, 'percentageChange': 1.4},
    {'name': 'Pão de Açúcar (PCAR3)', 'value': 32.50, 'percentageChange': -1.3},
  ];

  List<Map<String, dynamic>> _filteredItems = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _filteredItems = List.from(_items);
  }

  void _filterItems(String query) {
    setState(() {
      _filteredItems = _items
          .where((item) =>
              item['name'].toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search Page'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
              onChanged: _filterItems,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredItems.length,
              itemBuilder: (context, index) {
                final asset = _filteredItems[index];
                Color iconColor =
                    asset['percentageChange'] >= 0 ? Colors.green : Colors.red;
                IconData changeIcon = asset['percentageChange'] >= 0
                    ? Icons.arrow_upward
                    : Icons.arrow_downward;

                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AssetPage(
                          title: asset['name'],
                        ),
                      ),
                    );
                  },
                  child: ListTile(
                    title: Text(asset['name']),
                    subtitle: Row(
                      children: [
                        Text('R\$ ${asset['value'].toStringAsFixed(2)}'),
                        const SizedBox(width: 8),
                        Text(
                          '${asset['percentageChange'].toStringAsFixed(2)}%',
                          style: TextStyle(color: iconColor),
                        ),
                        const SizedBox(width: 4),
                        Icon(changeIcon, color: iconColor),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}
