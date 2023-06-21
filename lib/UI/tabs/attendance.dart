import 'package:flutter/material.dart';
import 'package:school_manegment_system/UI/widgets/attendance%20_button.dart';
import '../../../core/constant/constant_decoration.dart';
import '../widgets/custom_class_list_button.dart';


class Attendance extends StatelessWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return SizedBox(
      width: 73 * w,
      height: 80*h,
      child:  Column(
        children: [
          Container(
            width: 70 * w,
            height: 80*h,
            decoration: ConstantDecoration.adminPageLogInContainerDecoration,
            child: Padding(
              padding:  EdgeInsets.all(1*w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomAttendanceButton(text: 'Class 10th', onPressed: (){}),
                      CustomAttendanceButton(text: 'Class 9th', onPressed: (){}),
                      CustomAttendanceButton(text: 'Class 8th', onPressed: (){}),
                      CustomAttendanceButton(text: 'Class 7th', onPressed: (){}),
                      CustomAttendanceButton(text: 'Class 6th', onPressed: (){}),
                      CustomAttendanceButton(text: 'Class 5th', onPressed: (){}),

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomAttendanceButton(text: 'Class 4th', onPressed: (){}),
                      CustomAttendanceButton(text: 'Class 3rd', onPressed: (){}),
                      CustomAttendanceButton(text: 'Class 2nd', onPressed: (){}),
                      CustomAttendanceButton(text: 'Class 1st', onPressed: (){}),
                      CustomAttendanceButton(text: 'Class KG', onPressed: (){}),
                      CustomAttendanceButton(text: 'Class Nursery', onPressed: (){}),


                    ],
                  ),
                ],
              ),
            ),
          )



        ],
      ),
    );
  }
}
