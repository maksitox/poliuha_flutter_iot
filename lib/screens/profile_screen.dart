// lib/screens/profile_screen.dart

import 'package:flutter/material.dart';
import 'package:quantum/screens/login_screen.dart';
import 'package:quantum/widgets/custom_button.dart';

class ProfileScreen extends StatelessWidget {
  final String username = 'Oksana Sawara';
  final String email = 'oksanasawara@gmail.com';
  final List<String> linkedWallets = [
    'BTC Wallet: 1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa',
    'ETH Wallet: 0x32Be343B94f860124dC4fEe278FDCBD38C102D88',
  ];

  ProfileScreen({super.key});

  void _editProfile() {
    // Edit profile functionality
  }

  void _logOut(BuildContext context) {
    Navigator.push<void>(
      context,
      MaterialPageRoute<void>(builder: (context) => const LoginScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final bool isSmallScreen = MediaQuery.of(context).size.width < 600;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: isSmallScreen
          ? Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('lib/assets/avatar_placeholder.png'),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    username,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    email,
                    style: const TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 24),
                  const Text(
                    'Linked Wallets:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  for (var wallet in linkedWallets)
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Text(
                        wallet,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomButton(
                          text: 'Edit Profile',
                          onPressed: _editProfile,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: CustomButton(
                          text: 'Log Out',
                          onPressed: () => _logOut(context),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(70),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        const Text(
                          'Linked Wallets:',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        for (var wallet in linkedWallets)
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4),
                            child: Text(
                              wallet,
                              style: const TextStyle(fontSize: 16),
                            ),
                          ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 32),
                  Expanded(
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage('lib/assets/avatar_placeholder.png'),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          username,
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          email,
                          style:
                              const TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        const SizedBox(height: 24),
                        CustomButton(
                          text: 'Edit Profile',
                          onPressed: _editProfile,
                        ),
                        const SizedBox(height: 16),
                        CustomButton(
                          text: 'Log Out',
                          onPressed: () => _logOut(context),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
