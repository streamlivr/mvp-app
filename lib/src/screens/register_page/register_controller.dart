import 'dart:developer';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:mvp/src/model/response_model.dart';

class RegisterController extends ChangeNotifier {
    Future<ResponseModel> loginUser({
    required String email,
    required String password,
  }) async {
    final auth = FirebaseAuth.instance;
    try {
      final userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      final user = userCredential.user;
      log(user.toString());
      return ResponseModel(data: user!.uid, status: "success");
    } catch (e) {
      return ResponseModel(data: e, status: 'error');
    }
  }

  Future<ResponseModel> registerUser({
    required String email,
    required String password,
  }) async {
    final auth = FirebaseAuth.instance;
    try {
      final userCredential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      final user = userCredential.user;
      log(user.toString());
        return ResponseModel(data: user, status: "success");
    } catch (e) {
      return ResponseModel(data: e, status: 'error');
    }
  }

}
