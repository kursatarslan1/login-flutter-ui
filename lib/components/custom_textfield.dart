import 'package:flutter/material.dart';

class customTextField extends StatelessWidget {
  customTextField({
    super.key,
    required this.controller,
    required this.obscure,
    required this.hintText,
  });

  TextEditingController controller = TextEditingController();
  final bool obscure;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextFormField(
        cursorColor: const Color.fromARGB(255, 166, 109, 105),
        obscureText: obscure,
        controller: controller,
        decoration: InputDecoration(
            hintText: hintText,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 155, 92, 88)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 97, 52, 49)),
            ),
            fillColor: const Color.fromARGB(255, 236, 230, 229),
            filled: true,
            hintStyle:
                const TextStyle(color: Color.fromARGB(255, 151, 71, 66))),
      ),
    );
  }
}
