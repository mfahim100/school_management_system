import 'package:flutter/material.dart';

class ViewDetailDoubleRow extends StatelessWidget {
  final String sno;
  final String text;
  final String value;
  final String sno2;
  final String text2;
  final String value2;

  const ViewDetailDoubleRow({
    super.key,
    required this.sno,
    required this.text,
    required this.value,
    required this.sno2,
    required this.text2,
    required this.value2,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Column(
      children: [
        Row(
          children: [
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  sno,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 1.2 * w,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 0.5 * w,
                ),
                SizedBox(
                  width: 12 * w,
                  child: Text(
                    '$text :',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 1.2 * w,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 01 * w,
                ),
                SizedBox(
                  width: 25 * w,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 15 * w),
                        child: Text(
                          value,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 1.2 * w,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 0.3 * w,
                      ),
                      Divider(
                        height: .2 * h,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 1.5 * w,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  sno2,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 1.2 * w,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 0.5 * w,
                ),
                SizedBox(
                  width: 12 * w,
                  child: Text(
                    '$text2 :',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 1.2 * w,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 01 * w,
                ),
                SizedBox(
                  width: 25 * w,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 15 * w),
                        child: Text(
                          value2,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 1.2 * w,
                              color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 0.3 * w,
                      ),
                      Divider(
                        height: .2 * h,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 2 * h,
        ),
      ],
    );
  }
}
