import 'package:flutter/cupertino.dart';

class AttendanceResult extends StatelessWidget {
  const AttendanceResult({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return SizedBox(
      width: 73 * w,
      child: SizedBox(
        height: 80*h,
        width: 70*w,
        child: Padding(
            padding:  EdgeInsets.all(2*w),
            child: const Placeholder(),
        ),

      ),

    );
  }
}
