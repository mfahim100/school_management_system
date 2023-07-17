import 'package:flutter/material.dart';

import '../../core/constant/constant_text_styles.dart';

class StudentDetailButton extends StatelessWidget {
  final bool isSmall;
  final String text;
  final Function() onPressed;
  final bool isSelected;

  const StudentDetailButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isSmall = false,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 12 * w,
        height: 06.5 * h,
        decoration: BoxDecoration(
            color: isSelected ? Colors.blueGrey : Colors.white,
            borderRadius: BorderRadius.circular(5 * w)),
        child: Center(
            child: Text(
          text,
          style: TextStyle(fontSize: 2.5 * h, fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
