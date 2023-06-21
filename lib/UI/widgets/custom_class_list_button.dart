import 'package:flutter/material.dart';
import '../../core/constant/constant_text_styles.dart';

class CustomClassListButton extends StatelessWidget {

  final String text;
  final String studentStrength;
  final Function() onPressed;




  const CustomClassListButton(
      {Key? key, required this.text,
        required this.onPressed,
        required this.studentStrength,
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
        width: 32*w,
        decoration: BoxDecoration(
            color: Colors.purpleAccent,
            borderRadius: BorderRadius.circular(5*w),
            boxShadow: [
              BoxShadow(
                color: Colors.purple,
                spreadRadius: 0.3*w,
                blurRadius: 0.3*w,
                blurStyle: BlurStyle.inner
            )],
            gradient: const LinearGradient(
                colors: [
                  Colors.blueAccent,
                  Colors.blueGrey,
                  Colors.black12,
                  Colors.blueAccent,
            ])
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              Text(text, style: ConstantTextStyles.classListButton,),
              Text(studentStrength, style: ConstantTextStyles.classListButton,),

            ],
          ),

        ),
      ),
    );
  }
}
