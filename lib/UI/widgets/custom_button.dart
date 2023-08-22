import 'package:flutter/material.dart';

import '../../core/constant/constant_text_styles.dart';


class CustomButton extends StatelessWidget {
  final bool isSmall;
  final String text;
  final Function() onPressed;
  final bool isSelected;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.isSmall=false,
    this.isSelected=false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 25*w,
        height: 08*h,
        decoration: BoxDecoration(
            color:  isSelected ? Colors.green : Colors.white,
            borderRadius: BorderRadius.circular(25)),
        child: Center(
            child: Text(
          text,
              style:ConstantTextStyles.customButtonStyle ,
        )),
      ),
    );
  }
}
