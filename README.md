# GameHub Royale

A cross-platform mobile app combining Chess, Ludo, and Carrom games with multiplayer, AI opponents, chat, and monetization features.

## Features

### Games
- **Chess**: Classic strategy game with local play, online multiplayer, and AI opponents
- **Ludo**: Fun family board game supporting 2-6 players with private rooms
- **Carrom**: Realistic 2D physics-based game (Unity integration planned)

### Core Features
- Multi-platform authentication (Google, Apple, Facebook, Guest)
- Real-time multiplayer gaming
- Text and voice chat
- Friend system and social features
- Leaderboards and rating system
- Coins economy and daily rewards
- In-app purchases and AdMob integration
- Responsive UI for phones and tablets

## Tech Stack

### Frontend
- **Flutter**: Cross-platform app development
- **Riverpod**: State management
- **Go Router**: Navigation
- **Flutter ScreenUtil**: Responsive UI

### Backend & Services
- **Firebase**: Authentication, Firestore, Analytics, Crashlytics
- **Agora**: Voice chat
- **Google AdMob**: Monetization
- **Unity**: Carrom game physics (planned)

### Key Packages
- `firebase_auth`: Authentication
- `cloud_firestore`: Database
- `google_sign_in`: Google authentication
- `sign_in_with_apple`: Apple authentication
- `flutter_facebook_auth`: Facebook authentication
- `google_mobile_ads`: Ad monetization
- `agora_rtc_engine`: Voice chat
- `flame`: Game development
- `flutter_unity_widget`: Unity integration

## Project Structure

```
lib/
├── core/
│   ├── constants/      # App constants
│   ├── error/         # Error handling
│   ├── network/       # Network utilities
│   ├── storage/       # Storage utilities
│   ├── theme/         # App theming
│   └── utils/         # General utilities
├── features/
│   ├── auth/          # Authentication
│   ├── home/          # Home screen
│   ├── chess/         # Chess game
│   ├── ludo/          # Ludo game
│   ├── carrom/        # Carrom game
│   ├── chat/          # Chat system
│   ├── friends/       # Friends system
│   ├── leaderboard/   # Leaderboards
│   ├── profile/       # User profiles
│   └── store/         # In-app store
└── shared/
    ├── models/        # Data models
    ├── services/      # Shared services
    └── widgets/       # Reusable widgets
```

## Getting Started

### Prerequisites
- Flutter SDK (3.24.4 or later)
- Dart SDK (3.1.0 or later)
- Firebase project setup
- Android Studio / Xcode for platform-specific development

### Installation

1. Clone the repository:
```bash
git clone https://github.com/your-org/gamehub-royale.git
cd gamehub-royale
```

2. Install dependencies:
```bash
flutter pub get
```

3. Configure Firebase:
   - Create a new Firebase project
   - Add Android and iOS apps to your Firebase project
   - Download and add `google-services.json` (Android) and `GoogleService-Info.plist` (iOS)
   - Update `.env` file with your Firebase configuration

4. Configure environment:
```bash
cp .env.example .env
# Edit .env with your configuration values
```

5. Generate code (for data models):
```bash
flutter packages pub run build_runner build
```

6. Run the app:
```bash
flutter run
```

## Development Status

### Phase 1 - MVP (Current)
- ✅ Flutter app setup and basic structure
- ✅ Authentication system (Google, Apple, Facebook, Guest)
- ✅ Home screen and navigation
- ✅ Basic UI/UX framework
- ✅ Game placeholder pages (Chess, Ludo, Carrom)
- 🔄 Chess game implementation (in progress)
- 🔄 Ludo game implementation (in progress)
- ⏳ Firebase integration
- ⏳ Basic chat system
- ⏳ AdMob integration

### Phase 2 - Real-time Features (Planned)
- Unity Carrom integration
- Real-time networking
- Voice chat (Agora)
- Matchmaking system
- Advanced game features

### Phase 3 - Monetization & Polish (Planned)
- In-app purchases
- Rewarded ads
- Leaderboards
- Social features
- Admin dashboard

## Configuration

### Firebase Setup
1. Create a Firebase project at https://console.firebase.google.com/
2. Enable Authentication with Google, Apple, and Facebook providers
3. Set up Firestore database
4. Enable Analytics and Crashlytics
5. Add your app's platform configurations

### AdMob Setup
1. Create an AdMob account
2. Create ad units for banners, interstitials, and rewarded ads
3. Update ad unit IDs in `app_constants.dart`

### Voice Chat Setup (Agora)
1. Create an Agora account
2. Get your App ID and App Certificate
3. Update configuration in `.env` file

## Testing

Run tests:
```bash
flutter test
```

Run integration tests:
```bash
flutter test integration_test/
```

## Building

### Android
```bash
flutter build apk --release
# or for App Bundle
flutter build appbundle --release
```

### iOS
```bash
flutter build ios --release
```

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Support

For support, email support@gamehubroyale.com or create an issue on GitHub.

## Roadmap

- [ ] Complete Phase 1 MVP features
- [ ] Unity Carrom integration
- [ ] Real-time multiplayer
- [ ] Voice chat implementation
- [ ] Tournament system
- [ ] Clan/guild features
- [ ] Spectator mode
- [ ] AR mode for Carrom
- [ ] Cross-platform tournaments

---

Built with ❤️ using Flutter
