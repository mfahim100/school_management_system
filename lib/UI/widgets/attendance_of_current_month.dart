import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/delete_button.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';


import '../../core/constant/constant_decoration.dart';
import '../../core/models/AttendanceModel.dart';
import '../../core/providers/attendance_provider.dart';

class AttendanceOfCurrentMonth extends StatelessWidget {
  const AttendanceOfCurrentMonth({super.key});

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
            width: 100*w,
            height: 100*h,
            child: Column(
              children: [
              Container(
                color: Colors.greenAccent,
              height: 6*h,
              width: 100*w,
              child: Row(
                children: [
                  Container(
                    width: 07*w,
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        )
                    ),
                    child: Center(
                      child: Text('Ad.No.',style: TextStyle(
                          fontSize: 1.1*w,color: Colors.black
                      ),),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                        )
                    ),
                    width: 12*w,
                    child: Center(
                      child: Text('Student Name',style: TextStyle(
                          fontSize: 1.1*w,color: Colors.black
                      ),),
                    ),
                  ),
                  // SizedBox(
                  //   width: 74.5*w,
                  //   child: SizedBox(
                  //     width: 80*w,
                  //     child: ListView.builder(
                  //         itemCount:
                  //         attendanceProvider.getAttendanceByMonthList.length,
                  //         scrollDirection: Axis.horizontal,
                  //         itemBuilder: (context,index){
                  //          AttendanceModel  mdl = attendanceProvider.getAttendanceByMonthList[index];
                  //           DateTime dt = DateTime.fromMillisecondsSinceEpoch(mdl.date!);
                  //           String date = '${dt.day}';
                  //           return Container(
                  //             decoration: BoxDecoration(
                  //                 border: Border.all(
                  //                   color: Colors.black,
                  //                 )
                  //             ),
                  //             width: 2.4*w,
                  //             child: Center(
                  //               child: Text(date,style: TextStyle(
                  //                   fontSize: 1.2*w,color: Colors.black
                  //               ),),
                  //             ),
                  //           );
                  //         }),
                  //   ),
                  // ),
                  SizedBox(
                    width: 74.5*w,
                    child: SizedBox(
                      width: 80*w,
                      child: attendanceProvider.getAttendanceByMonthListNew.isEmpty?
                        const Text('') :
                      ListView.builder(
                          itemCount:
                          attendanceProvider.getAttendanceByMonthListNew[0].length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context,index){
                           AttendanceModel  mdl = attendanceProvider.getAttendanceByMonthListNew[0][index];
                            DateTime dt = DateTime.fromMillisecondsSinceEpoch(mdl.date!);
                            String date = '${dt.day}';
                            return Container(
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  )
                              ),
                              width: 2.4*w,
                              child: Center(
                                child: Text(date,style: TextStyle(
                                    fontSize: 1.2*w,color: Colors.black
                                ),),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
              SizedBox(height: 0.2 *w,),
              // SizedBox(
              //   height: 78.5*h,
              //   width: 100*w,
              //   child: ListView.builder(
              //     itemCount:
              //     attendanceProvider.getAttendanceByMonthList.length,
              //     itemBuilder: (BuildContext context, int index) {
              //       AttendanceModel mdl = attendanceProvider.getAttendanceByMonthList[index];
              //       return SizedBox(
              //         height: 6*h,
              //         width: 100*w,
              //         child: Row(
              //           children: [
              //             Container(
              //               width: 07*w,
              //               decoration: BoxDecoration(
              //                   border: Border.all(
              //                     color: Colors.black,
              //                   )
              //               ),
              //               child: Center(
              //                 child: Text(mdl.admissionNumber!.toString(),style: TextStyle(
              //                     fontSize: 1.1*w,color: Colors.black
              //                 ),),
              //               ),
              //             ),
              //             Container(
              //               width: 12*w,
              //               decoration: BoxDecoration(
              //                   border: Border.all(
              //                     color: Colors.black,
              //                   )
              //               ),
              //               child: Center(
              //                 child: Text(mdl.name!,style: TextStyle(
              //                     fontSize: 1.1*w,color: Colors.black
              //                 ),),
              //               ),
              //             ),
              //             SizedBox(
              //               width: 74.5*w,
              //               child: SizedBox(
              //                 width: 80*w,
              //                 child: ListView.builder(
              //                     itemCount:
              //                     attendanceProvider.getAttendanceByMonthList.length,
              //                     scrollDirection: Axis.horizontal,
              //                     itemBuilder: (context,index){
              //                       AttendanceModel mdl = attendanceProvider.getAttendanceByMonthList[index];
              //                       DateTime dt = DateTime.fromMillisecondsSinceEpoch(mdl.date!);
              //                       return Container(
              //                         decoration: BoxDecoration(
              //                             border: Border.all(
              //                                color: Colors.black,
              //                             )
              //                         ),
              //                         width: 2.4*w,
              //                         child: Center(
              //                           child: Text(mdl.type!,style: TextStyle(
              //                               fontSize: 1.2*w,color: Colors.black
              //                           ),),
              //                         ),
              //                       );
              //                     }),
              //               ),
              //             ),
              //           ],
              //         ),
              //       );
              //     },
              //   ),
              // ),
              SizedBox(
                height: 78.5*h,
                width: 100*w,
                child: attendanceProvider.getAttendanceByMonthListNew.isEmpty?
                Center(
                    child: Text(
                      'No Data Found',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 3*w

                    ),)) :
                ListView.builder(
                  itemCount:
                  attendanceProvider.getAttendanceByMonthListNew.length,
                  itemBuilder: (BuildContext context, int index) {
                    List<AttendanceModel> mdl = attendanceProvider.getAttendanceByMonthListNew[index];
                    return SizedBox(
                      height: 6*h,
                      width: 100*w,
                      child: Row(
                        children: [
                          Container(
                            width: 07*w,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                )
                            ),
                            child: Center(
                              child: Text(mdl[0].admissionNumber!.toString(),style: TextStyle(
                                  fontSize: 1.1*w,color: Colors.black
                              ),),
                            ),
                          ),
                          Container(
                            width: 12*w,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                )
                            ),
                            child: Center(
                              child: Text(mdl[0].name!,style: TextStyle(
                                  fontSize: 1.1*w,color: Colors.black
                              ),),
                            ),
                          ),
                          SizedBox(
                            width: 74.5*w,
                            child: SizedBox(
                              width: 80*w,
                              child: attendanceProvider.getAttendanceByMonthListNew.isEmpty?
                              const Text('') :
                              ListView.builder(
                                  itemCount:
                                  attendanceProvider.getAttendanceByMonthListNew[index].length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context,index2){
                                    AttendanceModel mdl = attendanceProvider.getAttendanceByMonthListNew[index][index2];
                                    DateTime dt = DateTime.fromMillisecondsSinceEpoch(mdl.date!);
                                    return Container(
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                             color: Colors.black,
                                          )
                                      ),
                                      width: 2.4*w,
                                      child: Center(
                                        child: Text(mdl.type!,style: TextStyle(
                                            fontSize: 1.2*w,color: Colors.black
                                        ),),
                                      ),
                                    );
                                  }),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
                Row(
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
                )
              ],
            ),


          );

        },
      ),
    );
  }
}
