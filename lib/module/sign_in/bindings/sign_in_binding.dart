import 'package:flutter_firebase_setup/module/sign_in/controller/sign_in_controller.dart';
import 'package:get/instance_manager.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(
      () => SignInController(),
    );
  }
}
