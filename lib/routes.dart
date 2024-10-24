// lib/routes.dart

import 'package:flutter/material.dart';
import 'package:quantum/screens/login_screen.dart';
import 'package:quantum/screens/main_wallet_screen.dart';
import 'package:quantum/screens/profile_screen.dart';
import 'package:quantum/screens/registration_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/login': (context) => const LoginScreen(),
  '/register': (context) => const RegistrationScreen(),
  '/profile': (context) => ProfileScreen(),
  '/main': (context) => MainWalletScreen(),
};
