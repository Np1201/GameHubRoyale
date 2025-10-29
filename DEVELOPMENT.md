# GameHub Royale - Development Guide

## Project Overview

GameHub Royale is a comprehensive multi-game mobile application built with Flutter, combining Chess, Ludo, and Carrom games with real-time multiplayer capabilities, social features, and monetization.

## Architecture

The project follows a **Clean Architecture** approach with **Feature-First** organization:

```
lib/
├── core/                    # Core utilities and configurations
│   ├── constants/         # App-wide constants
│   ├── error/             # Error handling
│   ├── network/           # Network utilities
│   ├── storage/           # Storage utilities
│   ├── theme/             # App theming
│   └── utils/             # Utility functions
├── features/                # Feature modules
│   └── [feature]/
│       ├── data/          # Data layer (repositories, datasources)
│       ├── domain/        # Domain layer (entities, use cases)
│       └── presentation/  # Presentation layer (pages, widgets, providers)
└── shared/                  # Shared components
    ├── models/            # Shared data models
    ├── services/          # Shared services
    └── widgets/           # Reusable widgets
```

## Tech Stack

### Core
- **Flutter 3.24.4**: Cross-platform framework
- **Dart 3.5.4**: Programming language
- **Riverpod**: State management
- **Go Router**: Navigation
- **Freezed**: Code generation for immutable classes
- **JSON Annotation**: JSON serialization

### Backend & Services
- **Firebase**: Authentication, Firestore, Analytics, Crashlytics, Storage
- **Agora**: Real-time voice chat
- **Google AdMob**: Monetization
- **Socket.IO**: Real-time communication

### Game Development
- **Flame**: 2D game engine for Flutter
- **Unity**: Planned for Carrom physics (flutter_unity_widget)

### UI/UX
- **Flutter ScreenUtil**: Responsive design
- **Lottie**: Animations
- **Cached Network Image**: Image caching
- **Custom Material Design**: Themed components

## Development Setup

### Prerequisites
1. Flutter SDK 3.24.4 or later
2. Dart SDK 3.1.0 or later
3. Android Studio / Xcode for platform development
4. Firebase CLI (for Firebase configuration)
5. Git

### Installation

1. **Clone the repository:**
```bash
git clone <repository-url>
cd gamehub-royale
```

2. **Install dependencies:**
```bash
flutter pub get
```

3. **Generate code:**
```bash
flutter packages pub run build_runner build
```

4. **Configure environment:**
```bash
cp .env.example .env
# Edit .env with your configuration
```

5. **Run the app:**
```bash
flutter run
```

## Code Generation

The project uses code generation for data models and JSON serialization:

```bash
# Generate code
flutter packages pub run build_runner build

# Watch for changes (development)
flutter packages pub run build_runner watch

# Force rebuild
flutter packages pub run build_runner build --delete-conflicting-outputs
```

## Data Models

All data models are defined using **Freezed** for immutability and **JSON Annotation** for serialization:

```dart
@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String userId,
    required String displayName,
    // ... other fields
  }) = _UserModel;
  
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
```

## State Management

Using **Riverpod** for state management with different provider types:

```dart
// Simple state
final counterProvider = StateProvider<int>((ref) => 0);

// Async state
final userProvider = FutureProvider<User?>((ref) async {
  return authService.getCurrentUser();
});

// Complex state with notifier
final gameNotifierProvider = StateNotifierProvider<GameNotifier, GameState>(
  (ref) => GameNotifier(),
);
```

## Navigation

Using **Go Router** for declarative navigation:

```dart
// Navigate to a route
context.push('/chess');

// Navigate with parameters
context.push('/game', extra: {'gameType': 'chess'});

// Replace current route
context.go('/home');
```

## Firebase Integration

### Authentication
- Google Sign-In
- Apple Sign-In (iOS)
- Facebook Authentication
- Anonymous/Guest login

### Firestore Collections
- `users`: User profiles and game statistics
- `match_rooms`: Active game sessions
- `chat_messages`: Chat messages
- `reports`: User reports for moderation
- `leaderboards`: Game rankings

### Security Rules
Firestore security rules should be configured to:
- Allow users to read/write their own data
- Restrict sensitive operations
- Implement proper validation

## Testing

### Unit Tests
```bash
flutter test
```

### Widget Tests
```bash
flutter test test/widget_test.dart
```

### Integration Tests
```bash
flutter test integration_test/
```

## Building

### Android
```bash
# Debug APK
flutter build apk --debug

# Release APK
flutter build apk --release

# App Bundle for Play Store
flutter build appbundle --release
```

### iOS
```bash
# Debug build
flutter build ios --debug

# Release build
flutter build ios --release
```

### Web
```bash
flutter build web
```

## Code Style & Guidelines

### Naming Conventions
- **Files**: `snake_case.dart`
- **Classes**: `PascalCase`
- **Variables/Methods**: `camelCase`
- **Constants**: `SCREAMING_SNAKE_CASE`

### Directory Structure
- Feature-first organization
- Separate data, domain, and presentation layers
- Shared components in `shared/` directory

### Comments
- Document public APIs
- Explain complex business logic
- Add TODO comments for future improvements

## Performance Optimization

### Images
- Use `cached_network_image` for network images
- Optimize image sizes for different screen densities
- Use vector graphics (SVG) when possible

### State Management
- Use appropriate provider types
- Avoid unnecessary rebuilds
- Dispose resources properly

### Memory Management
- Dispose controllers and streams
- Use weak references where appropriate
- Monitor memory usage in development

## Debugging

### Flutter Inspector
Use Flutter Inspector for widget tree debugging:
```bash
flutter inspector
```

### Logging
Use the `logger` package for structured logging:
```dart
final logger = Logger();
logger.i('Info message');
logger.w('Warning message');
logger.e('Error message');
```

### Firebase Crashlytics
Crashlytics is configured to automatically capture crashes:
```dart
FirebaseCrashlytics.instance.recordError(
  error,
  stackTrace,
  fatal: false,
);
```

## Deployment

### Android Play Store
1. Build release APK/AAB
2. Sign with release keystore
3. Upload to Play Console
4. Configure store listing

### iOS App Store
1. Build release IPA
2. Upload via Xcode or Transporter
3. Submit for review
4. Configure App Store listing

## Monitoring & Analytics

### Firebase Analytics
Track user interactions and app performance:
```dart
FirebaseAnalytics.instance.logEvent(
  name: 'game_started',
  parameters: {'game_type': 'chess'},
);
```

### Crashlytics
Monitor app crashes and stability metrics.

### Performance Monitoring
Track app performance metrics and user experience.

## Security Considerations

### Authentication
- Implement proper token validation
- Use secure storage for sensitive data
- Implement rate limiting

### Data Protection
- Encrypt sensitive data
- Implement proper access controls
- Follow GDPR/CCPA compliance

### API Security
- Validate all inputs
- Use HTTPS for all communications
- Implement proper error handling

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests if applicable
5. Run tests and linting
6. Submit a pull request

### Pull Request Guidelines
- Clear description of changes
- Reference related issues
- Include screenshots for UI changes
- Ensure all tests pass
- Follow code style guidelines

## Troubleshooting

### Common Issues

1. **Build failures**: Clean and rebuild
   ```bash
   flutter clean
   flutter pub get
   flutter build
   ```

2. **Code generation errors**: Delete generated files and regenerate
   ```bash
   find . -name "*.g.dart" -delete
   find . -name "*.freezed.dart" -delete
   flutter packages pub run build_runner build
   ```

3. **Firebase connection issues**: Check configuration files
   - Android: `google-services.json`
   - iOS: `GoogleService-Info.plist`

4. **Platform-specific issues**: Check platform-specific documentation
   - [Flutter Android setup](https://docs.flutter.dev/get-started/install/android)
   - [Flutter iOS setup](https://docs.flutter.dev/get-started/install/ios)

## Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Riverpod Documentation](https://riverpod.dev/)
- [Firebase Flutter Documentation](https://firebase.flutter.dev/)
- [Go Router Documentation](https://pub.dev/packages/go_router)
- [Freezed Documentation](https://pub.dev/packages/freezed)

---

**Note**: This is a living document that should be updated as the project evolves.
