import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';

class FriendsPage extends StatelessWidget {
  const FriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text('Friends'),
      ),
      body: const Center(
        child: Text(
          'Friends page coming soon!',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
