import 'package:flutter/material.dart';

class FeeHistoryRow extends StatelessWidget {
  final String monthName, monthlyFee, status;
  final Function() onPressed;

  const FeeHistoryRow({
    super.key,
    required this.monthName,
    required this.monthlyFee,
    required this.status,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return SizedBox(
      height: 4.5 * h,
      width: 45 * w,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 15*w,
                child: Text(
                  monthName,
                  style: TextStyle(fontSize: 1.3 * w, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 10*w,
                child: Text(
                  monthlyFee,
                  style: TextStyle(fontSize: 1.3 * w, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                width: 10*w,
                child: Container(
                  height: 03 * h,
                  width: 03 * w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2 * w),
                    gradient: const LinearGradient(colors: [
                      Colors.black,
                      Colors.red,
                    ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                  ),
                  child: InkWell(
                    onTap: onPressed,
                    child: Center(
                      child: Text(
                        status,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 1.2 * w,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: .5*h,),

        ],
      ),
    );
  }
}
