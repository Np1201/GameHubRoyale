import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../features/auth/presentation/pages/splash_page.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/register_page.dart';
import '../../features/home/presentation/pages/home_page.dart';
import '../../features/chess/presentation/pages/chess_game_page.dart';
import '../../features/ludo/presentation/pages/ludo_game_page.dart';
import '../../features/carrom/presentation/pages/carrom_game_page.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import '../../features/friends/presentation/pages/friends_page.dart';
import '../../features/chat/presentation/pages/chat_page.dart';
import '../../features/leaderboard/presentation/pages/leaderboard_page.dart';
import '../../features/store/presentation/pages/store_page.dart';
import '../../features/auth/data/repositories/auth_repository.dart';

final appRouterProvider = Provider<GoRouter>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  
  return GoRouter(
    initialLocation: '/splash',
    redirect: (context, state) {
      final isLoggedIn = authRepository.currentUser != null;
      final isLoggingIn = state.matchedLocation == '/login' ||
          state.matchedLocation == '/register';
      
      if (!isLoggedIn && !isLoggingIn && state.matchedLocation != '/splash') {
        return '/login';
      }
      
      if (isLoggedIn && isLoggingIn) {
        return '/home';
      }
      
      return null;
    },
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: '/register',
        builder: (context, state) => const RegisterPage(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: '/chess',
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>? ?? {};
          return ChessGamePage(
            gameMode: extra['gameMode'] ?? 'local',
            roomId: extra['roomId'],
          );
        },
      ),
      GoRoute(
        path: '/ludo',
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>? ?? {};
          return LudoGamePage(
            gameMode: extra['gameMode'] ?? 'local',
            roomId: extra['roomId'],
          );
        },
      ),
      GoRoute(
        path: '/carrom',
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>? ?? {};
          return CarromGamePage(
            gameMode: extra['gameMode'] ?? 'local',
            roomId: extra['roomId'],
          );
        },
      ),
      GoRoute(
        path: '/profile',
        builder: (context, state) => const ProfilePage(),
      ),
      GoRoute(
        path: '/friends',
        builder: (context, state) => const FriendsPage(),
      ),
      GoRoute(
        path: '/chat',
        builder: (context, state) {
          final extra = state.extra as Map<String, dynamic>? ?? {};
          return ChatPage(
            roomId: extra['roomId'],
            recipientId: extra['recipientId'],
          );
        },
      ),
      GoRoute(
        path: '/leaderboard',
        builder: (context, state) => const LeaderboardPage(),
      ),
      GoRoute(
        path: '/store',
        builder: (context, state) => const StorePage(),
      ),
    ],
  );
});
