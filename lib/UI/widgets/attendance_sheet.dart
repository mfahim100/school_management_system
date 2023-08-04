import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/all_class_attendance_dialog.dart';
import 'package:school_manegment_system/UI/widgets/attendance_date_selection_dialog.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';
import 'package:school_manegment_system/core/constant/constant_decoration.dart';
import 'package:school_manegment_system/core/providers/attendance_provider.dart';

import '../../core/models/StudentsModels.dart';
import 'custom_button.dart';


class AttendanceSheet extends StatelessWidget {
  const AttendanceSheet({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Consumer<AttendanceProvider>(
      builder: (context, attendanceProvider, child) {
        return SizedBox(
          height: 70 * h,
          width: 70 * w,
          child: Container(
            decoration: ConstantDecoration.adminPageLogInContainerDecoration,
            child: Column(
              children: [
                SizedBox(
                  height: 62 * h,
                  width: 70 * w,
                  child:
                  ListView.builder(
                    itemCount:
                    attendanceProvider.getStudentByClassList.length,
                    itemBuilder: (BuildContext context, int index) {
                      StudentsModels mdl = attendanceProvider
                          .getStudentByClassList[index];
                      return Container(
                        height: 07 * h,
                        padding: EdgeInsets.symmetric(horizontal: 2*w),
                        decoration: ConstantDecoration
                            .adminPageLogInContainerDecoration,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              mdl.admissionNumber!.toString(),
                              style: const TextStyle(color: Colors.white),
                            ),
                            SizedBox(
                              width: 25*w,
                              child: Text(
                                mdl.name!,
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                            Row(mainAxisSize: MainAxisSize.min,children: [
                              SizedBox(
                                  height: 05 * h,
                                  width: 04 * w,
                                  child: StudentDetailButton(
                                    isSelected: attendanceProvider.stdAttendance[index]==1,
                                    text: 'P',
                                    onPressed: () {
                                    attendanceProvider.attendanceAttribute(
                                        mdl.admissionNumber!,mdl.name!,
                                        mdl.admittedClass!, 'P',index);
                                  },



                                  )
                              ),
                              SizedBox(width: 2*w),
                              SizedBox(
                                  height: 05 * h,
                                  width: 04 * w,
                                  child: StudentDetailButton(
                                    isSelected: attendanceProvider.stdAttendance[index]==2,
                                    text: 'A', onPressed: () {
                                    attendanceProvider.attendanceAttribute(
                                        mdl.admissionNumber!,mdl.name!,
                                        mdl.admittedClass!, 'A',index);
                                  })
                              ),
                              SizedBox(width: 2*w),
                              SizedBox(
                                  height: 05 * h,
                                  width: 04 * w,
                                  child: StudentDetailButton(
                                    isSelected: attendanceProvider.stdAttendance[index]==3,
                                    text: 'L', onPressed: () {
                                    attendanceProvider.attendanceAttribute(
                                        mdl.admissionNumber!,mdl.name!,
                                        mdl.admittedClass!,'L',index);
                                  },)
                              ),
                            ],)

                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 2 * h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                        height: 6 * h,
                        width: 30*w,
                        child: StudentDetailButton(
                            text: 'View All Class Attendance',
                            onPressed: () {
                              attendanceProvider.getAttendanceByClassProvider();
                              showDialog(
                                  barrierDismissible: false,
                                  context: context, builder: (context){
                                return const AllClassAttendanceDialog();
                              });
                            }

                        )),
                    SizedBox(
                        height: 06 * h,
                        width: 30*w,
                        child: StudentDetailButton(
                            text: 'View By Date And Class',
                            onPressed: () {
                              showDialog(
                                  barrierDismissible: false,
                                  context: context, builder: (context){
                                return const AttendanceDateSelectionDialog();

                              });

                            }

                        )),
                  ],
                )


              ],
            ),
          ),
        );
      },
    );
  }
}
