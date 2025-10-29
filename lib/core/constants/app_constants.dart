class AppConstants {
  // App Info
  static const String appName = 'GameHub Royale';
  static const String appVersion = '1.0.0';
  static const String appBuildNumber = '1';
  
  // API Endpoints
  static const String baseUrl = 'https://api.gamehubroyale.com';
  static const String websocketUrl = 'wss://ws.gamehubroyale.com';
  
  // Game Settings
  static const int maxPlayersChess = 2;
  static const int maxPlayersLudo = 6;
  static const int maxPlayersCarrom = 4;
  
  // Chess Settings
  static const int defaultChessRating = 1200;
  static const Map<String, int> chessTimeControls = {
    'bullet': 60, // 1 minute
    'blitz': 300, // 5 minutes
    'rapid': 900, // 15 minutes
    'classical': 1800, // 30 minutes
  };
  
  // Matchmaking
  static const int matchmakingTimeoutSeconds = 60;
  static const int reconnectTimeoutSeconds = 60;
  static const int roomCodeLength = 6;
  
  // Chat
  static const int maxChatMessageLength = 500;
  static const int chatHistoryLimit = 100;
  
  // Voice Chat
  static const String agoraAppId = ''; // Set in Firebase Remote Config
  
  // AdMob
  static const String androidAdAppId = 'ca-app-pub-3940256099942544~3347511713'; // Test ID
  static const String iosAdAppId = 'ca-app-pub-3940256099942544~1458002511'; // Test ID
  
  static const String androidBannerAdId = 'ca-app-pub-3940256099942544/6300978111';
  static const String iosBannerAdId = 'ca-app-pub-3940256099942544/2934735716';
  
  static const String androidInterstitialAdId = 'ca-app-pub-3940256099942544/1033173712';
  static const String iosInterstitialAdId = 'ca-app-pub-3940256099942544/4411468910';
  
  static const String androidRewardedAdId = 'ca-app-pub-3940256099942544/5224354917';
  static const String iosRewardedAdId = 'ca-app-pub-3940256099942544/1712485313';
  
  // In-App Purchases
  static const List<String> productIds = [
    'coins_100',
    'coins_500',
    'coins_1000',
    'vip_monthly',
    'remove_ads',
  ];
  
  // Coins & Rewards
  static const int dailyLoginCoins = 10;
  static const int matchWinCoins = 5;
  static const int rewardedAdCoins = 25;
  static const int friendInviteCoins = 50;
  
  // Storage Keys
  static const String userDataKey = 'user_data';
  static const String settingsKey = 'app_settings';
  static const String onboardingKey = 'onboarding_completed';
  static const String soundEnabledKey = 'sound_enabled';
  static const String musicEnabledKey = 'music_enabled';
  static const String notificationsEnabledKey = 'notifications_enabled';
  
  // Firebase Collections
  static const String usersCollection = 'users';
  static const String matchRoomsCollection = 'match_rooms';
  static const String chatMessagesCollection = 'chat_messages';
  static const String reportsCollection = 'reports';
  static const String leaderboardsCollection = 'leaderboards';
  static const String friendRequestsCollection = 'friend_requests';
  
  // Error Messages
  static const String genericErrorMessage = 'Something went wrong. Please try again.';
  static const String networkErrorMessage = 'Please check your internet connection.';
  static const String authErrorMessage = 'Authentication failed. Please try again.';
  static const String matchmakingErrorMessage = 'Could not find a match. Please try again.';
  
  // Validation
  static const int minUsernameLength = 3;
  static const int maxUsernameLength = 20;
  static const String usernameRegex = r'^[a-zA-Z0-9_]+$';
  
  // Animation Durations
  static const Duration shortAnimationDuration = Duration(milliseconds: 300);
  static const Duration mediumAnimationDuration = Duration(milliseconds: 500);
  static const Duration longAnimationDuration = Duration(milliseconds: 1000);
}
