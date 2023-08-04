import 'package:flutter/material.dart';

class DmcMarksRow extends StatelessWidget {
  final String subject,totalMarks,obtainedMarks;
  const DmcMarksRow({super.key, required this.subject, required this.totalMarks, required this.obtainedMarks});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Column(
      children: [
        Table(
          border:TableBorder.all(
            color: Colors.black
          ),
          children: [
            TableRow(
              children: [
                SizedBox(
                  height: 5*h,
                  width: 12*w,
                  child:Center(
                    child: Text(subject,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 1.3*w,
                    ),),
                  ),
                ),
                SizedBox(
                  height: 5*h,
                  width: 12*w,
                  child:Center(
                    child: Text(totalMarks,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 1.3*w,
                    ),),
                  ),
                ),
                SizedBox(
                  height: 5*h,
                  width: 12*w,
                  child:Center(
                    child: Text(obtainedMarks,style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 1.3*w,
                    ),),
                  ),
                ),
              ]
            )



          ],
        ),
        SizedBox(height: .3*h,),
      ],
    );
  }
}
