import 'package:finance_projections/presentation/widget/bottom_app_bar.dart';
import 'package:finance_projections/presentation/widget/stock_historical_chart.dart';
import 'package:finance_projections/presentation/widget/stock_prediction_chart.dart';
import 'package:flutter/material.dart';

class AssetPage extends StatelessWidget {
  final String title;

  const AssetPage({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 5.0,
            left: 20,
            right: 20,
          ),
          child: Column(
            children: [
              const Row(
                children: [
                  Text(
                    "Valor Atual: R\$ 10.000,00",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(height: 10),
              const Card(
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Histórico de Ações',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 270,
                        child: StockChart(),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              // Card para o segundo gráfico
              const Card(
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Valor Futuro das Ações',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 270,
                        child: StockFutureValueChart(),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16),
              // Row com o card de assinatura e o botão
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Card(
                    elevation: 4,
                    child: Padding(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        children: [
                          Icon(Icons.lock, color: Colors.red),
                          SizedBox(width: 8),
                          Text('Assine o plano premium para liberar'),
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Ação ao clicar no botão
                      print('Botão de compra pressionado!');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.green,
                      backgroundColor: Colors.lightGreen, // Cor do texto verde
                    ),
                    child: const Text('Comprar'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }
}
