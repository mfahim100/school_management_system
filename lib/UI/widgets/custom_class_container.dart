import 'package:flutter/material.dart';

import '../../core/constant/constant_text_styles.dart';

class CustomClassContainer extends StatelessWidget {

  final String text;
  final Function() onEdit;
  final Function() onDelete;


  const CustomClassContainer(
      {Key? key, required this.text,
        required this.onEdit,
        required this.onDelete,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Container(
      height: 08*h,
      width: 30*w,
      decoration: BoxDecoration(
          color: Colors.purpleAccent,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [BoxShadow(
          color: Colors.blueGrey,
            spreadRadius: 10,
          blurRadius: 10,
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
            IconButton(onPressed: onEdit,
                icon: const Icon(Icons.edit, size: 40, color: Colors.white)),

            Text(text, style: ConstantTextStyles.classContainerButton,),

            IconButton(onPressed: onDelete,
                icon: const Icon(Icons.delete, size: 40, color: Colors.white,)),

          ],
        ),

      ),
    );
  }
}
