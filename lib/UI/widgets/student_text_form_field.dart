import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentTextFormField extends StatelessWidget {
  final String hintText;
  final String labelText;
  final Icon? prefix;
  final IconButton? suffixButton;
  final bool obscureText;
  final TextInputType textInputType;
  final Icon? suffix;
  final int? maxLength;
  final TextEditingController? controller = TextEditingController();
  final String? Function(String?)? validator;

  StudentTextFormField({
    Key? key,
    required this.hintText,
    required this.labelText,
    this.prefix,
    this.suffixButton,
    this.obscureText = false,
    this.textInputType = TextInputType.text,
    this.suffix,
    this.maxLength,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return SizedBox(
      width: 25*w,
      height: 08*h,
      child: TextFormField(
        style: const TextStyle(color: Colors.white),
        maxLength: maxLength,
        validator: validator,
        keyboardType: textInputType,
        obscureText: obscureText,
        controller: controller,
        //  validator: validator,
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
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10*w),
            )),
      ),
    );
  }
}
