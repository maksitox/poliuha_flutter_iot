// lib/screens/main_wallet_screen.dart

import 'package:flutter/material.dart';
import 'package:quantum/widgets/crypto_card.dart';

class MainWalletScreen extends StatelessWidget {
  MainWalletScreen({super.key});

  final double totalBalance = 12500.75;
  final List<Map<String, String>> cryptocurrencies = [
    {
      'name': 'Bitcoin',
      'symbol': 'BTC',
      'amount': '1.5',
      'icon': '₿',
    },
    {
      'name': 'Ethereum',
      'symbol': 'ETH',
      'amount': '10',
      'icon': 'Ξ',
    },
    {
      'name': 'Dogecoin',
      'symbol': 'DOGE',
      'amount': '5000',
      'icon': 'Ð',
    },
  ];

  void _addNewCrypto(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Add New Cryptocurrency')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('My Wallet'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Card(
              color: Colors.deepPurpleAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Total Balance',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '\$${totalBalance.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.builder(
                itemCount: cryptocurrencies.length,
                itemBuilder: (context, index) {
                  final crypto = cryptocurrencies[index];
                  return CryptoCard(
                    name: crypto['name']!,
                    symbol: crypto['symbol']!,
                    amount: double.parse(crypto['amount']!),
                    icon: crypto['icon']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 155, 90, 253),
        onPressed: () => _addNewCrypto(context),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
