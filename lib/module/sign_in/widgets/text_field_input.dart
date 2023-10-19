import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  const TextFieldInput({
    super.key,
    required this.hintText,
    required this.onChanged,
    required this.onPressedSuffixIcon,
    required this.isPassword,
    this.obscureText,
    required this.controller,
  });

  final String hintText;
  final void Function(String?)? onChanged;
  final void Function()? onPressedSuffixIcon;
  final bool isPassword;
  final bool? obscureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .90,
      child: TextField(
        controller: controller,
        obscureText: obscureText ?? false,
        onChanged: onChanged,
        keyboardType: TextInputType.emailAddress,
        cursorColor: const Color.fromARGB(255, 19, 46, 20),
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(13),
            ),
            borderSide: BorderSide(color: Colors.black, width: 1),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(13),
            ),
            borderSide: BorderSide(color: Colors.black, width: 1),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
