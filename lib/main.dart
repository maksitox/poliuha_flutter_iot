// lib/main.dart

import 'package:flutter/material.dart';
import 'package:quantum/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Wallet Test App',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/login',
      routes: appRoutes,
    );
  }
}
