part of 'app_pages.dart';

abstract class Routes {
  Routes._();

  static Future<String> get INITIAL async {
    return Routes.SIGN_IN;
  }

  static const SIGN_IN = _Paths.SIGN_IN;
  static const HOME = _Paths.HOME;
}

abstract class _Paths {
  _Paths._();

  static const SIGN_IN = "/sign_in";
  static const HOME = "/home";
}
