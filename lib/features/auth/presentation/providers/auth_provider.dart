import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../../data/repositories/auth_repository.dart';
import '../../../../shared/models/user_model.dart';

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AsyncValue<User?>>((ref) {
  return AuthNotifier(ref.watch(authRepositoryProvider));
});

final currentUserProvider = StreamProvider<User?>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return authRepository.authStateChanges;
});

final userProfileProvider = StreamProvider.family<UserModel?, String>((ref, userId) {
  final authRepository = ref.watch(authRepositoryProvider);
  // TODO: Implement user profile stream from Firestore
  return Stream.value(null);
});

class AuthNotifier extends StateNotifier<AsyncValue<User?>> {
  final AuthRepository _authRepository;
  
  AuthNotifier(this._authRepository) : super(const AsyncValue.loading()) {
    _init();
  }
  
  void _init() {
    _authRepository.authStateChanges.listen((user) {
      state = AsyncValue.data(user);
    });
  }
  
  Future<bool> signInWithGoogle() async {
    try {
      state = const AsyncValue.loading();
      final userCredential = await _authRepository.signInWithGoogle();
      return userCredential != null;
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      return false;
    }
  }
  
  Future<bool> signInWithApple() async {
    try {
      state = const AsyncValue.loading();
      final userCredential = await _authRepository.signInWithApple();
      return userCredential != null;
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      return false;
    }
  }
  
  Future<bool> signInWithFacebook() async {
    try {
      state = const AsyncValue.loading();
      final userCredential = await _authRepository.signInWithFacebook();
      return userCredential != null;
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      return false;
    }
  }
  
  Future<bool> signInAsGuest() async {
    try {
      state = const AsyncValue.loading();
      final userCredential = await _authRepository.signInAsGuest();
      return userCredential != null;
    } catch (e, st) {
      state = AsyncValue.error(e, st);
      return false;
    }
  }
  
  Future<void> signOut() async {
    try {
      await _authRepository.signOut();
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
  
  Future<void> deleteAccount() async {
    try {
      await _authRepository.deleteAccount();
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}
