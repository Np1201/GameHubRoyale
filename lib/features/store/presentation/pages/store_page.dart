import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text('Store'),
      ),
      body: const Center(
        child: Text(
          'Store page coming soon!',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
