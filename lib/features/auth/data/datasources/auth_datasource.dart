import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../shared/models/user_model.dart';
import '../../../../core/constants/app_constants.dart';

final authDatasourceProvider = Provider<AuthDatasource>((ref) {
  return AuthDatasource();
});

class AuthDatasource {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  
  Future<void> createOrUpdateUser(UserModel user) async {
    try {
      final userRef = _firestore.collection(AppConstants.usersCollection).doc(user.userId);
      
      // Check if user exists
      final userDoc = await userRef.get();
      
      if (userDoc.exists) {
        // Update existing user
        await userRef.update({
          'lastActiveAt': Timestamp.fromDate(DateTime.now()),
        });
      } else {
        // Create new user
        await userRef.set(user.toJson());
      }
    } catch (e) {
      throw Exception('Failed to create/update user: $e');
    }
  }
  
  Future<UserModel?> getUser(String userId) async {
    try {
      final userDoc = await _firestore
          .collection(AppConstants.usersCollection)
          .doc(userId)
          .get();
      
      if (userDoc.exists) {
        return UserModel.fromJson(userDoc.data()!);
      }
      
      return null;
    } catch (e) {
      throw Exception('Failed to get user: $e');
    }
  }
  
  Future<void> updateUser(UserModel user) async {
    try {
      await _firestore
          .collection(AppConstants.usersCollection)
          .doc(user.userId)
          .update(user.toJson());
    } catch (e) {
      throw Exception('Failed to update user: $e');
    }
  }
  
  Future<void> deleteUser(String userId) async {
    try {
      await _firestore
          .collection(AppConstants.usersCollection)
          .doc(userId)
          .delete();
    } catch (e) {
      throw Exception('Failed to delete user: $e');
    }
  }
  
  Stream<UserModel?> watchUser(String userId) {
    return _firestore
        .collection(AppConstants.usersCollection)
        .doc(userId)
        .snapshots()
        .map((doc) {
      if (doc.exists) {
        return UserModel.fromJson(doc.data()!);
      }
      return null;
    });
  }
}
