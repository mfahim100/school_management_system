import 'package:flutter/material.dart';

class ViewDetailRow extends StatelessWidget {
  final String text;
  final String value;

  const ViewDetailRow({
    super.key,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 1.7 * w,
                color: Colors.white
              ),
            ),
            Text(
              value,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 1.7 * w,
              ),
            ),
          ],
        ),
        SizedBox(height: 0.5*h,),
        Divider(height: 0.5*h,color: Colors.white,)
      ],
    );
  }
}
