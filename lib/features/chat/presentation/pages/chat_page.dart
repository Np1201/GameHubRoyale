import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';

class ChatPage extends StatelessWidget {
  final String? roomId;
  final String? recipientId;
  
  const ChatPage({
    Key? key,
    this.roomId,
    this.recipientId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        title: const Text('Chat'),
      ),
      body: const Center(
        child: Text(
          'Chat page coming soon!',
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }
}
