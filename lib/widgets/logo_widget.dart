// lib/widgets/logo_widget.dart

import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final double size;
  const LogoWidget({
    Key? key,
    this.size = 150,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 24.0),
      child: Icon(
        Icons.currency_bitcoin,
        size: size,
        color: Colors.deepPurpleAccent,
      ),
    );
  }
}