import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class NotificationService {
  static NotificationService? _instance;
  static NotificationService get instance => _instance ??= NotificationService._();
  NotificationService._();
  
  final FirebaseMessaging _messaging = FirebaseMessaging.instance;
  
  Future<void> init() async {
    // Request permission for iOS
    if (Platform.isIOS) {
      await _requestIOSPermissions();
    }
    
    // Request notification permission for Android 13+
    if (Platform.isAndroid) {
      await Permission.notification.request();
    }
    
    // Configure message handlers
    FirebaseMessaging.onMessage.listen(_handleForegroundMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(_handleMessageOpenedApp);
    FirebaseMessaging.onBackgroundMessage(_handleBackgroundMessage);
    
    // Get initial message if app was launched from notification
    final initialMessage = await _messaging.getInitialMessage();
    if (initialMessage != null) {
      _handleMessageOpenedApp(initialMessage);
    }
  }
  
  Future<void> _requestIOSPermissions() async {
    final settings = await _messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    
    debugPrint('iOS notification permission status: ${settings.authorizationStatus}');
  }
  
  Future<String?> getToken() async {
    try {
      return await _messaging.getToken();
    } catch (e) {
      debugPrint('Error getting FCM token: $e');
      return null;
    }
  }
  
  Future<void> subscribeToTopic(String topic) async {
    try {
      await _messaging.subscribeToTopic(topic);
    } catch (e) {
      debugPrint('Error subscribing to topic $topic: $e');
    }
  }
  
  Future<void> unsubscribeFromTopic(String topic) async {
    try {
      await _messaging.unsubscribeFromTopic(topic);
    } catch (e) {
      debugPrint('Error unsubscribing from topic $topic: $e');
    }
  }
  
  void _handleForegroundMessage(RemoteMessage message) {
    debugPrint('Received foreground message: ${message.messageId}');
    
    // Show in-app notification or handle as needed
    _showInAppNotification(message);
  }
  
  void _handleMessageOpenedApp(RemoteMessage message) {
    debugPrint('Message opened app: ${message.messageId}');
    
    // Handle navigation based on message data
    _handleNotificationNavigation(message);
  }
  
  void _showInAppNotification(RemoteMessage message) {
    // You can implement a custom in-app notification widget here
    // or use a package like overlay_support
  }
  
  void _handleNotificationNavigation(RemoteMessage message) {
    final data = message.data;
    
    // Handle navigation based on notification type
    switch (data['type']) {
      case 'match_invite':
        // Navigate to match room
        break;
      case 'friend_request':
        // Navigate to friends page
        break;
      case 'chat_message':
        // Navigate to chat
        break;
      default:
        // Navigate to home
        break;
    }
  }
}

@pragma('vm:entry-point')
Future<void> _handleBackgroundMessage(RemoteMessage message) async {
  debugPrint('Received background message: ${message.messageId}');
  // Handle background message processing here
}
