import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/attendance_of_selected_month.dart';
import 'package:school_manegment_system/UI/widgets/custom_button.dart';
import 'package:school_manegment_system/UI/widgets/drop_down_menu.dart';
import 'package:school_manegment_system/core/constant/constant_decoration.dart';
import 'package:school_manegment_system/core/constant/drop_down_menu_constant.dart';
import 'package:school_manegment_system/core/providers/attendance_provider.dart';



class AttendanceMonthSelectionDialog extends StatelessWidget {
   const AttendanceMonthSelectionDialog({super.key});

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
            decoration: ConstantDecoration.adminPageLogInContainerDecoration,
            width: 30*w,
            height: 35*h,
            child: Padding(
              padding:  EdgeInsets.all(1.5*w),
              child: Column(
                children: [

                  CustomDropDownMenu(text: 'Please Select Month', items: DropDownMenuConstant.monthList, onChanged:  (txt) =>
                attendanceProvider.setMonth(txt!),),

                  CustomButton(text: 'Submit', onPressed: (){
                    showDialog(context: context, builder: (context){
                      attendanceProvider.getAttendanceBySelectedMonthProvider();
                      return const AttendanceOfSelectedMonth();
                    });
                  }),

                  SizedBox(height: 1.5*h,),

                  CustomButton(text: 'Cancel', onPressed: (){
                    Navigator.of(context).pop();
                  })


                ],
              ),
            ),
          );

        },
      ),
    );
  }
}
