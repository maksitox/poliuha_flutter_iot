// lib/widgets/crypto_card.dart

import 'package:flutter/material.dart';

class CryptoCard extends StatelessWidget {
  final String name;
  final String symbol;
  final double amount;
  final String icon;

  const CryptoCard({
    required this.name,
    required this.symbol,
    required this.amount,
    required this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Text(
              icon,
              style: const TextStyle(
                fontSize: 40,
                color: Color.fromARGB(255, 146, 107, 255),
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    symbol,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              amount.toStringAsFixed(2),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
