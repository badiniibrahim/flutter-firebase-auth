import 'package:flutter_firebase_setup/module/home/bindings/home_bindings.dart';
import 'package:flutter_firebase_setup/module/home/views/home_view.dart';
import 'package:flutter_firebase_setup/module/sign_in/bindings/sign_in_binding.dart';
import 'package:flutter_firebase_setup/module/sign_in/views/sign_in_view.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => SignInView(),
      binding: SignInBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_IN,
      page: () => const HomeView(),
      binding: HomeBinding(),
    )
  ];
}
