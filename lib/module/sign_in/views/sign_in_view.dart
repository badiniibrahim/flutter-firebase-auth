import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase_setup/module/sign_in/controller/sign_in_controller.dart';
import 'package:flutter_firebase_setup/module/sign_in/widgets/text_field_input.dart';
import 'package:flutter_firebase_setup/utils/validation.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:lottie/lottie.dart';

class SignInView extends GetView<SignInController> with ValidationMixin {
  SignInView({super.key});
  final formGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignInController>(
      init: SignInController(),
      initState: (_) {},
      builder: (_) {
        return Scaffold(
          body: SingleChildScrollView(
            child: Form(
              key: formGlobalKey,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * .1),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .28,
                      child: Lottie.asset("assets/animations/login.json"),
                    ),
                    Text(
                      "Hello Badini",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.lerp(
                          FontWeight.w900,
                          FontWeight.w300,
                          5.0,
                        ),
                      ),
                      strutStyle: const StrutStyle(leading: 3.0),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Welcome back, you've been missed",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.lerp(
                          FontWeight.w900,
                          FontWeight.w300,
                          5.0,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    TextFieldInput(
                      hintText: "Email",
                      onChanged: (value) {},
                      onPressedSuffixIcon: () {},
                      isPassword: false,
                      controller: controller.emailTextController,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .03),
                    TextFieldInput(
                      hintText: "Password",
                      onChanged: (value) {},
                      onPressedSuffixIcon: () {},
                      isPassword: true,
                      controller: controller.passwordTextController,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .02),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            child: Text(
                              "Forgot password ?",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .02),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .06,
                      width: MediaQuery.of(context).size.width * .9,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          disabledForegroundColor: Colors.red,
                          backgroundColor:
                              const Color.fromARGB(255, 39, 134, 103),
                        ),
                        onPressed: () {
                          controller.signIn(controller.emailTextController.text,
                              controller.passwordTextController.text);
                        },
                        child: const Text("Sign In"),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * .03),
                    RichText(
                      text: TextSpan(
                        text: "Don't already Have an account ? ",
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black26,
                        ),
                        children: [
                          TextSpan(
                            recognizer: TapGestureRecognizer()..onTap = () {},
                            text: "Sign Up",
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
