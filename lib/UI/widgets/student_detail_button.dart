import 'package:flutter/material.dart';

import '../../core/constant/constant_text_styles.dart';


class StudentDetaileButton extends StatelessWidget {
  final bool isSmall;
  final String text;
  final Function() onPressed;

  const StudentDetaileButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isSmall=false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return SizedBox(
      width: 12*w,
      height: 06.5*h,
      child: InkWell(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(5*w)),
          child: Center(
              child: Text(
                text,
                style:TextStyle(
                  fontSize: 2.5*h,
                  fontWeight: FontWeight.bold
                ),
              )),
        ),
      ),
    );
  }
}