import 'package:flutter/material.dart';

class ViewDetailRow extends StatelessWidget {
  final String sno;
  final String text;
  final String value;

  const ViewDetailRow({
    super.key,
    required this.sno,
    required this.text,
    required this.value,

  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Column(
      children: [
        Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(sno, style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 1.2 * w,
                color: Colors.white
            ),),
            SizedBox(width: 0.5*w,),
            SizedBox(
              width: 11*w,
              child: Text('$text:', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 1.2 * w,
                  color: Colors.white
              ),),
            ),
            SizedBox(width: 01*w,),
            SizedBox(
              width: 60*w,
              child: Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(right: 40*w),
                    child: Text(value, style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 1.2 * w,
                        color: Colors.white
                    ),),
                  ),
                  SizedBox(height: 0.3*w,),
                  Divider(height: .2*h,color: Colors.white,),
                ],
              ),
            ),

          ],),
        SizedBox(height: 2*h,),
      ],
    );
  }
}
