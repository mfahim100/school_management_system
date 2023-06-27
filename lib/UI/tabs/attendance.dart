import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/attendance%20_button.dart';
import 'package:school_manegment_system/core/providers/menu_aap_provider.dart';
import '../../../core/constant/constant_decoration.dart';
import '../widgets/attendance_sheet.dart';
import '../widgets/custom_class_list_button.dart';


class Attendance extends StatelessWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Consumer<MenuAapProvider>(
  builder: (context, menuAapProvider, child) {
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
                      CustomAttendanceButton(text: 'Class 10th', onPressed: (){
                            menuAapProvider.setIndexTab(6);
                      }),
                      CustomAttendanceButton(text: 'Class 9th', onPressed: (){
                        menuAapProvider.setIndexTab(6);
                      }),
                      CustomAttendanceButton(text: 'Class 8th', onPressed: (){
                        menuAapProvider.setIndexTab(6);
                      }),
                      CustomAttendanceButton(text: 'Class 7th', onPressed: (){
                        menuAapProvider.setIndexTab(6);
                      }),
                      CustomAttendanceButton(text: 'Class 6th', onPressed: (){
                        menuAapProvider.setIndexTab(6);
                      }),
                      CustomAttendanceButton(text: 'Class 5th', onPressed: (){
                        menuAapProvider.setIndexTab(6);
                      }),

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomAttendanceButton(text: 'Class 4th', onPressed: (){
                        menuAapProvider.setIndexTab(6);
                      }),
                      CustomAttendanceButton(text: 'Class 3rd', onPressed: (){
                        menuAapProvider.setIndexTab(6);
                      }),
                      CustomAttendanceButton(text: 'Class 2nd', onPressed: (){
                        menuAapProvider.setIndexTab(6);
                      }),
                      CustomAttendanceButton(text: 'Class 1st', onPressed: (){
                        menuAapProvider.setIndexTab(6);
                      }),
                      CustomAttendanceButton(text: 'Class KG', onPressed: (){
                        menuAapProvider.setIndexTab(6);
                      }),
                      CustomAttendanceButton(text: 'Class Nursery', onPressed: (){
                        menuAapProvider.setIndexTab(6);
                      }),


                    ],
                  ),
                ],
              ),
            ),
          )



        ],
      ),
    );
  },
);
  }
}
