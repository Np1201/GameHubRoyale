import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/models/user_model.dart';
import '../datasources/auth_datasource.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  return AuthRepository(ref.watch(authDatasourceProvider));
});

class AuthRepository {
  final AuthDatasource _authDatasource;
  
  AuthRepository(this._authDatasource);
  
  User? get currentUser => FirebaseAuth.instance.currentUser;
  
  Stream<User?> get authStateChanges => FirebaseAuth.instance.authStateChanges();
  
  Future<UserCredential?> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
      if (googleUser == null) return null;
      
      final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );
      
      final userCredential = await FirebaseAuth.instance.signInWithCredential(credential);
      
      // Create or update user profile
      if (userCredential.user != null) {
        await _createOrUpdateUserProfile(userCredential.user!, AuthProvider.google);
      }
      
      return userCredential;
    } catch (e) {
      throw Exception('Google sign in failed: $e');
    }
  }
  
  Future<UserCredential?> signInWithApple() async {
    try {
      final credential = await SignInWithApple.getAppleIDCredential(
        scopes: [AppleIDAuthorizationScopes.email, AppleIDAuthorizationScopes.fullName],
      );
      
      final oauthCredential = OAuthProvider('apple.com').credential(
        idToken: credential.identityToken,
        accessToken: credential.authorizationCode,
      );
      
      final userCredential = await FirebaseAuth.instance.signInWithCredential(oauthCredential);
      
      if (userCredential.user != null) {
        await _createOrUpdateUserProfile(userCredential.user!, AuthProvider.apple);
      }
      
      return userCredential;
    } catch (e) {
      throw Exception('Apple sign in failed: $e');
    }
  }
  
  Future<UserCredential?> signInWithFacebook() async {
    try {
      final LoginResult result = await FacebookAuth.instance.login();
      
      if (result.status == LoginStatus.success) {
        final OAuthCredential facebookAuthCredential =
            FacebookAuthProvider.credential(result.accessToken!.token);
        
        final userCredential = await FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
        
        if (userCredential.user != null) {
          await _createOrUpdateUserProfile(userCredential.user!, AuthProvider.facebook);
        }
        
        return userCredential;
      }
      
      return null;
    } catch (e) {
      throw Exception('Facebook sign in failed: $e');
    }
  }
  
  Future<UserCredential?> signInAsGuest() async {
    try {
      final userCredential = await FirebaseAuth.instance.signInAnonymously();
      
      if (userCredential.user != null) {
        await _createOrUpdateUserProfile(userCredential.user!, AuthProvider.guest);
      }
      
      return userCredential;
    } catch (e) {
      throw Exception('Guest sign in failed: $e');
    }
  }
  
  Future<void> signOut() async {
    try {
      await GoogleSignIn().signOut();
      await FacebookAuth.instance.logOut();
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      throw Exception('Sign out failed: $e');
    }
  }
  
  Future<void> deleteAccount() async {
    try {
      final user = currentUser;
      if (user != null) {
        // Delete user data from Firestore
        await _authDatasource.deleteUser(user.uid);
        
        // Delete Firebase Auth account
        await user.delete();
      }
    } catch (e) {
      throw Exception('Delete account failed: $e');
    }
  }
  
  Future<void> _createOrUpdateUserProfile(User user, AuthProvider provider) async {
    final userModel = UserModel(
      userId: user.uid,
      displayName: user.displayName ?? 'Player${user.uid.substring(0, 6)}',
      avatarUrl: user.photoURL,
      email: user.email,
      provider: provider,
      rating: const UserRating(),
      createdAt: DateTime.now(),
      lastActiveAt: DateTime.now(),
    );
    
    await _authDatasource.createOrUpdateUser(userModel);
  }
}
