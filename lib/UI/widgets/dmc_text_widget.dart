import 'package:flutter/material.dart';

class DmcTextWidget extends StatelessWidget {

  final String name, fatherName,examType;
final int admissionNumber;
  const DmcTextWidget({
    super.key,
    required this.name,
    required this.fatherName,
    required this.admissionNumber,
    required this.examType,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
        )
      ),
      height: 20 * h,
      width: 50 * w,
      child: Padding(
        padding:  EdgeInsets.all(1*w),
        child: Text(
            'THIS IS CERTIFY THAT $name Son/Daughter of $fatherName Admission Number $admissionNumber and a candidate of FAROOQIA Education & Modern Science School System has secured the marks shown against each subject in the $examType examination',
        style: TextStyle(
            fontSize: 1.35*w,
          fontWeight: FontWeight.bold,
          color: Colors.white

        ),
        ),
      ),
    );
  }
}
