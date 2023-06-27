import 'package:flutter/material.dart';

import '../../core/constant/constant_text_styles.dart';

class CustomFeeContainer extends StatelessWidget {

  final String text;
  final Function() onPressed;



  const CustomFeeContainer(
      {Key? key, required this.text,
        required this.onPressed,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return InkWell(
      onTap: onPressed,
      child: Container(
        height: 08*h,
        width: 30*w,
        decoration: BoxDecoration(
            color: Colors.purpleAccent,
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [BoxShadow(
                color: Colors.blueGrey,
                spreadRadius: 12,
                blurRadius: 15,
                blurStyle: BlurStyle.inner
            )],
            gradient: const LinearGradient(
                colors: [
                  Colors.blueAccent,
                  Colors.greenAccent,
                  Colors.black12,
                  Colors.blueAccent,
                ])
        ),
        child: Center(
          child: Text(text, style: ConstantTextStyles.classContainerButton,),

        ),
      ),
    );
  }
}
