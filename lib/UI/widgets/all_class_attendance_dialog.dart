import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';
import 'package:school_manegment_system/core/constant/constant_decoration.dart';
import 'package:school_manegment_system/core/models/AttendanceModel.dart';
import 'package:school_manegment_system/core/providers/attendance_provider.dart';

import 'delete_button.dart';

class AllClassAttendanceDialog extends StatelessWidget {
   const AllClassAttendanceDialog({super.key});

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
            width: 90*w,
            height: 90*h,
            child: Column(
              children: [
                SizedBox(
                  height: 08*h,
                  width: 90*w,
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                  StudentDetailButton(text: "First 15", onPressed: ()=>attendanceProvider.setIsFirst(true)),
                  StudentDetailButton(text: "Last upto 16", onPressed: ()=>attendanceProvider.setIsFirst(false)),
                ],),
                ),
                SizedBox(
                  height: 08*h,
                  width: 90*w,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 14*w,
                        child: Center(
                          child: Text('Admission Number',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 1.5*w
                          ),),
                        ),
                      ),

                      SizedBox(width: 1*w,),

                      SizedBox(
                        width: 17*w,
                        child: Center(
                          child: Text('Student Name',style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 1.5*w
                          ),),
                        ),
                      ),

                      SizedBox(width: 1*w,),
                      SizedBox(
                        width: 57*w,
                        child: ListView.builder(
                             itemCount: attendanceProvider.selectedAttendenceDate.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context,index){
                              // AttendanceModel mdl = attendanceProvider.selectedAttendence[index];
                              // DateTime doa = DateTime.fromMillisecondsSinceEpoch(mdl.date!);
                              // String date = '${doa.day}/${doa.month}';
                          return Container(
                            decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
                            width: 3.5*w,
                            child: Center(
                              child: Text(
                                attendanceProvider.selectedAttendenceDate[index].toString()
                                ,style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 1*w
                              ),),
                            ),
                          );
                        }),
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 2*h,),

                SizedBox(
                  height: 65*h,
                  width: 90*w,
                  child: ListView.builder(
                    itemCount: attendanceProvider.selectedAttendence.length,
                      itemBuilder: (context,index){
                        AttendanceModel mdl = attendanceProvider.selectedAttendence[index];
                        return SizedBox(
                      height: 08*h,
                      width: 90*w,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 14*w,
                            child: Center(
                              child: Text(mdl.admissionNumber!.toString(),style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 1.5*w
                              ),),
                            ),
                          ),

                          SizedBox(width: 1*w,),

                          SizedBox(
                            width: 17*w,
                            child: Center(
                              child: Text(mdl.name!,style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 1.5*w
                              ),),
                            ),
                          ),

                          SizedBox(width: 1*w,),
                          SizedBox(
                            width: 57*w,
                            child:
                            ListView.builder(
                                itemCount: attendanceProvider.selectedAttendence.length,
                                // itemCount: attendanceProvider.selectedAttendence.length,
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context,index){
                                  // AttendanceModel mdl = attendanceProvider.selectedAttendence[index];
                                  // DateTime doa = DateTime.fromMillisecondsSinceEpoch(mdl.date!);
                                  // String date = '${doa.day}/${doa.month}';
                                  return Container(
                                    decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
                                    width: 3.5*w,
                                    child: Center(
                                      child: Text(

                                        attendanceProvider.selectedAttendence[index].type.toString()
                                        ,style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 1*w
                                      ),),
                                    ),
                                  );
                                }),
                            // ListView.builder(
                            //     itemCount: attendanceProvider.selectedAttendence.length,
                            //     scrollDirection: Axis.horizontal,
                            //     itemBuilder: (context,index){
                            //       AttendanceModel mdl = attendanceProvider.selectedAttendence[index];
                            //       return Container(
                            //         decoration: BoxDecoration(border: Border.all(color: Colors.black54)),
                            //         width: 3.5 *w,
                            //         child: Center(
                            //           child: Text(mdl.type!,style: TextStyle(
                            //               fontWeight: FontWeight.bold,
                            //               fontSize: 1*w
                            //           ),),
                            //         ),
                            //       );
                            //     }),
                          ),
                        ],
                      ),
                    );
                  }),
                ),


                Container(
                  decoration: ConstantDecoration.adminPageLogInContainerDecoration,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 5*h,
                        width: 15*w,
                        child: StudentDetailButton(text: 'Print Data', onPressed: (){}),
                      ),
                      SizedBox(
                        height: 5*h,
                        width: 15*w,
                        child: DeleteButton(text: 'Cancel', onPressed: (){
                          Navigator.of(context).pop();
                        }),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );

        },
      ),
    );
  }
}
