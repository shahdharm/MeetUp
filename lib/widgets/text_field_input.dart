import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType textInputType;
  const TextFieldInput({
    Key? key,
    required this.textEditingController,
    this.isPass = false,
    required this.hintText,
    required this.textInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputBorder = OutlineInputBorder(
      borderSide: const BorderSide(
          color: Colors.black), // Set the border color to black
    );

    return TextField(
      controller: textEditingController,
      style:
          const TextStyle(color: Colors.black), // Set the text color to black
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white, // Set the background color to white
        hintText: hintText,
        hintStyle:
            const TextStyle(color: Colors.grey), // Set the hint text color
        border: inputBorder,
        focusedBorder: inputBorder,
        enabledBorder: inputBorder,

        contentPadding: const EdgeInsets.all(8),
      ),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
