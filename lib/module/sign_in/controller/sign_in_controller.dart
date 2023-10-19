import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_setup/module/sign_in/state.dart';
import 'package:flutter_firebase_setup/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SignInController extends GetxController {
  final SignInState state = SignInState();
  late Rx<User?> firebaseUser;

  final Rx<TextEditingController> _emailTextController =
      TextEditingController().obs;
  TextEditingController get emailTextController => _emailTextController.value;

  final Rx<TextEditingController> _passwordTextController =
      TextEditingController().obs;
  TextEditingController get passwordTextController =>
      _passwordTextController.value;

  @override
  void onInit() {
    super.onInit();
    firebaseUser = Rx<User?>(FirebaseAuth.instance.currentUser);
    firebaseUser.bindStream(FirebaseAuth.instance.userChanges());
    ever(firebaseUser, setInitialScreen);
  }

  void setInitialScreen(User? user) {
    if (user != null) {
      Get.offNamed(Routes.HOME);
    } else {
      Get.offNamed(Routes.SIGN_IN);
    }
  }

  void signIn(String email, String password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseException catch (e) {
      if (kDebugMode) {
        print("FirebaseException : ${e.message}");
      }
    } catch (e) {
      if (kDebugMode) {
        print("error : ${e.toString()}");
      }
    }
  }

  @override
  void dispose() {
    _emailTextController.value.dispose();
    _passwordTextController.value.dispose();
    super.dispose();
  }
}
