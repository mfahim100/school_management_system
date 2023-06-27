import 'package:flutter/material.dart';

class FeeStructureTextField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final Icon? prefix;
  final IconButton? suffixButton;
  final bool obscureText;
  final TextInputType textInputType;
  final Icon? suffix;
  final int? maxLength;
  TextEditingController? controller = TextEditingController();
  final String? Function(String?)? validator;

  FeeStructureTextField({
    Key? key,
    required this.hintText,
    required this.labelText,
    this.prefix,
    this.obscureText = false,
    this.textInputType = TextInputType.text,
    this.suffix,
    this.controller,
    this.validator,
    this.maxLength,
    this.suffixButton,
    // required this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),
      maxLength: maxLength,
      validator: validator,
      keyboardType: textInputType,
      obscureText: obscureText,
      controller: controller,
      //validator: validator,
      decoration: InputDecoration(
        errorStyle: const TextStyle(color: Colors.white),
        hintStyle: const TextStyle(color: Colors.white),
        labelStyle: const TextStyle(color: Colors.white),
        prefixIconColor: Colors.white,
        suffix: suffixButton,
        hintText: hintText,
        labelText: labelText,
        prefixIcon: prefix,
        suffixIcon: suffix,
        // contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        enabledBorder:const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),

        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(05),

        ),
      ),
    );
  }
}
