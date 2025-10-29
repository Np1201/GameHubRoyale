import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'dart:io';

import '../../../../core/theme/app_theme.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../shared/widgets/custom_button.dart';
import '../../../../shared/widgets/social_login_button.dart';
import '../providers/auth_provider.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({super.key});

  @override
  ConsumerState<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  bool _isLoading = false;

  Future<void> _signInWithGoogle() async {
    if (_isLoading) return;
    
    setState(() => _isLoading = true);
    
    try {
      final success = await ref.read(authNotifierProvider.notifier).signInWithGoogle();
      if (success && mounted) {
        context.go('/home');
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Google sign in failed: $e'),
            backgroundColor: AppTheme.errorColor,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _signInWithApple() async {
    if (_isLoading || !Platform.isIOS) return;
    
    setState(() => _isLoading = true);
    
    try {
      final success = await ref.read(authNotifierProvider.notifier).signInWithApple();
      if (success && mounted) {
        context.go('/home');
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Apple sign in failed: $e'),
            backgroundColor: AppTheme.errorColor,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _signInWithFacebook() async {
    if (_isLoading) return;
    
    setState(() => _isLoading = true);
    
    try {
      final success = await ref.read(authNotifierProvider.notifier).signInWithFacebook();
      if (success && mounted) {
        context.go('/home');
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Facebook sign in failed: $e'),
            backgroundColor: AppTheme.errorColor,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  Future<void> _signInAsGuest() async {
    if (_isLoading) return;
    
    setState(() => _isLoading = true);
    
    try {
      final success = await ref.read(authNotifierProvider.notifier).signInAsGuest();
      if (success && mounted) {
        context.go('/home');
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Guest sign in failed: $e'),
            backgroundColor: AppTheme.errorColor,
          ),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isLoading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // App Logo
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [AppTheme.primaryColor, AppTheme.secondaryColor],
                        ),
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: AppTheme.primaryColor.withOpacity(0.3),
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: const Icon(
                        Icons.games_outlined,
                        size: 50,
                        color: Colors.white,
                      ),
                    ),
                    
                    const SizedBox(height: 24),
                    
                    // Welcome Text
                    const Text(
                      'Welcome to',
                      style: TextStyle(
                        fontSize: 24,
                        color: AppTheme.textSecondary,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    
                    const Text(
                      AppConstants.appName,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: AppTheme.textPrimary,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    
                    const SizedBox(height: 8),
                    
                    Text(
                      'Play Chess, Ludo, and Carrom with friends!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: AppTheme.textSecondary,
                        fontFamily: 'Poppins',
                      ),
                    ),
                    
                    const SizedBox(height: 48),
                    
                    // Social Login Buttons
                    SocialLoginButton(
                      icon: Icons.login,
                      text: 'Continue with Google',
                      color: Colors.red,
                      onPressed: _isLoading ? null : _signInWithGoogle,
                    ),
                    
                    const SizedBox(height: 16),
                    
                    if (Platform.isIOS) ...[
                      SocialLoginButton(
                        icon: Icons.apple,
                        text: 'Continue with Apple',
                        color: Colors.black,
                        onPressed: _isLoading ? null : _signInWithApple,
                      ),
                      
                      const SizedBox(height: 16),
                    ],
                    
                    SocialLoginButton(
                      icon: Icons.facebook,
                      text: 'Continue with Facebook',
                      color: const Color(0xFF1877F2),
                      onPressed: _isLoading ? null : _signInWithFacebook,
                    ),
                    
                    const SizedBox(height: 24),
                    
                    // OR Divider
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 1,
                            color: Colors.grey.shade300,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Text(
                            'OR',
                            style: TextStyle(
                              color: AppTheme.textSecondary,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 1,
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ],
                    ),
                    
                    const SizedBox(height: 24),
                    
                    // Guest Login Button
                    CustomButton(
                      text: 'Play as Guest',
                      onPressed: _isLoading ? null : _signInAsGuest,
                      variant: ButtonVariant.outline,
                      isLoading: _isLoading,
                    ),
                  ],
                ),
              ),
              
              // Terms and Privacy
              Text(
                'By continuing, you agree to our Terms of Service and Privacy Policy',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  color: AppTheme.textLight,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
