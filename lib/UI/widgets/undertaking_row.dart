import 'package:flutter/material.dart';

class UnderTakingRow extends StatelessWidget {
  final String sno;
  final String text;
  const UnderTakingRow({super.key, required this.sno, required this.text});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Column(
      children: [
        Row(
          children: [
            SizedBox(
              width: 02*w,
              child: Text('$sno.',style: TextStyle(
                  fontSize: 1.5*w,
                  fontWeight: FontWeight.bold,

              ),),
            ),

            SizedBox(width: 3*w,),

            SizedBox(
              width: 70*w,
              child: Text(
                text,style: TextStyle(
                fontSize: 1.3*w,
                // fontWeight: FontWeight.bold
              ),
              ),
            ),

          ],
        ),
        SizedBox(height:1.5*h,)
      ],
    );
  }
}
