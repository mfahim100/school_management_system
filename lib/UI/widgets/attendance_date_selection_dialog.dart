import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/attendance_of_current_month.dart';
import 'package:school_manegment_system/UI/widgets/delete_button.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';
import 'package:school_manegment_system/core/constant/constant_decoration.dart';
import 'package:school_manegment_system/core/providers/attendance_provider.dart';

class AttendanceDateSelectionDialog extends StatelessWidget {
  const AttendanceDateSelectionDialog({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Dialog(
      child: Consumer<AttendanceProvider>(
        builder: (context, attendanceProvider,child) {
          return Container(
            width: 30*w,
            height: 50*h,
            decoration: ConstantDecoration.adminPageLogInContainerDecoration,
            child: Padding(
              padding: EdgeInsets.all(1*w),
              child: Column(
                children: [

                  Text('Select Date To view the Data',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 2*w,
                    color: Colors.white
                  ),),

                  SizedBox(height: 3*h,),

                  Container(
                    width: 25*w,
                    height: 06*h,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1*w),
                        border: Border.all(
                            color: Colors.black, width: 0.06*h)
                    ),
                    child: GestureDetector(
                      onTap: () =>
                          attendanceProvider.setAttendanceDate(context),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 2*w),
                          child: Text(
                            attendanceProvider
                                .attendanceString.toString(),style: TextStyle(
                            fontSize: 2.5*w,
                            color: Colors.white,
                          ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 3*h,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StudentDetailButton(text: 'View Data', onPressed: (){
                      showDialog(
                          barrierDismissible: false,
                          context: (context), builder: (context){
                        // attendanceProvider.getAttendanceByClassProvider();
                        return const AttendanceOfCurrentMonth();
                      });
                      }),
                      DeleteButton(text: 'Cancel', onPressed: (){
                        Navigator.of(context).pop();
                      })
                    ],
                  )


                ],
              ),
            ),
          );

        },

      ),
    );
  }
}
