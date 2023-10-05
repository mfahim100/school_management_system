import 'package:flutter/material.dart';

class CashDescriptionTextArea extends StatelessWidget {
  final String hintText;
  final String labelText;
  final TextInputType textInputType;
  TextEditingController? controller = TextEditingController();
  final String? Function(String?)? validator;

  CashDescriptionTextArea({
    Key? key,
    required this.hintText,
    required this.labelText,
    this.textInputType = TextInputType.text,
    this.validator,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    double h = size.height/100;
    double w = size.height/100;

    return TextFormField(
      maxLines: 4,
      textAlign: TextAlign.start,
      validator: validator,
      keyboardType: textInputType,
      controller: controller,
      cursorColor: Colors.white,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(

        errorStyle: const TextStyle(color: Colors.white),
        hintStyle:  TextStyle(color: Colors.white,fontSize: 2*w),
        labelStyle:  TextStyle(color: Colors.white,fontSize: 2*w),
        fillColor: Colors.white,
        hintText: hintText,
        labelText: labelText,

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(1*w),
        ),
      ),
    );
  }
}
