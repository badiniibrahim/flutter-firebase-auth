import 'package:get/get_rx/src/rx_types/rx_types.dart';

class SignInState {
  final RxBool _isObscureText = RxBool(true);
  set isObscureText(value) => _isObscureText.value = value;
  bool get isObscureText => _isObscureText.value;
}
