import 'package:finance_projections/presentation/pages/search_page.dart';
import 'package:finance_projections/presentation/pages/setings_page.dart';
import 'package:finance_projections/presentation/pages/wallet_page.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const WalletPage(
                    title: 'Wallet',
                  ),
                ),
                (route) => false,
              );
            },
            child: const Icon(Icons.account_balance_wallet),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const SearchPage(),
                ),
                (route) => false,
              );
            },
            child: const Icon(Icons.search),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => SettingsPage(),
                ),
                (route) => false,
              );
            },
            child: const Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
