import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/tabs/attendance.dart';
import 'package:school_manegment_system/UI/widgets/fee_history_row.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';
import 'package:school_manegment_system/core/models/AttendanceModel.dart';

import '../../core/constant/constant_decoration.dart';
import '../../core/models/fee_models.dart';
import '../../core/providers/fee_provider.dart';
import 'delete_button.dart';

class StudentFeeRecordDialog extends StatelessWidget {

  // AttendanceModel mdl = AttendanceModel();

   const StudentFeeRecordDialog({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Dialog(
      child: Consumer<FeeProvider>(
        builder: (context, feeProvider,child) {
          return Container(
            decoration: ConstantDecoration.adminPageLogInContainerDecoration,
            width: 50*w,
            height: 95*h,
            child: Padding(
              padding:  EdgeInsets.all(1*w),
              child: Column(
                children: [

                  SizedBox(
                    height: 18*h,
                    width: 48*w,
                  ),

                  SizedBox(height: 0.5*h,),

                  SizedBox(
                    height: 13.5*h,
                    width: 48*w,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 6*h,
                          width: 45*w,
                          child: Padding(
                            padding:  EdgeInsets.only(left: 2.5*w,right: 2.5*w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Student Name',style: TextStyle(
                                  fontSize: 1.5*w,fontWeight: FontWeight.bold

                                ),),
                                Text(' Father Name',style: TextStyle(
                                  fontSize: 1.5*w,fontWeight: FontWeight.bold

                                ),),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 0.5*h,),
                        SizedBox(
                          height: 6*h,
                          width: 45*w,
                          child: Padding(
                            padding:  EdgeInsets.only(left: 2.5*w,right: 2.5*w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Admission Number',style: TextStyle(
                                    fontSize: 1.4*w,fontWeight: FontWeight.bold

                                ),),
                                Text('Class',style: TextStyle(
                                    fontSize: 1.5*w,fontWeight: FontWeight.bold

                                ),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: .5*w,),

                  SizedBox(
                    height: 50*h,
                    width: 48*w,
                    child: Padding(
                      padding:  EdgeInsets.only(left: 2*w,right: 2*w),
                      child:  Column(
                        children: [
                          SizedBox(
                            height: 05 * h,
                            width: 17 * w,
                              child: Center(
                                child: Text(
                                  'Fee History',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.7 * w,
                                  ),
                                ),
                              ),

                          ),

                          SizedBox(height: 1*w,),


                          const FeeHistoryRow(monthName: 'June 2023', monthlyFee: '1000',status: 'Paid',),
                          const FeeHistoryRow(monthName: 'July 2023', monthlyFee: '1000',status: 'Paid',),
                          const FeeHistoryRow(monthName: 'August 2023', monthlyFee: '1000',status: 'Paid',),
                          const FeeHistoryRow(monthName: 'September 2023', monthlyFee: '1000',status: 'Paid',),
                          const FeeHistoryRow(monthName: 'October 2023', monthlyFee: '1000',status: 'Paid',),
                          const FeeHistoryRow(monthName: 'November 2023', monthlyFee: '1000',status: 'Paid',),
                          const FeeHistoryRow(monthName: 'Exam Fee', monthlyFee: '0',status: 'Non Paid',),
                          const FeeHistoryRow(monthName: 'Fine', monthlyFee: '0',status: 'Paid',),
                          SizedBox(height: 1*w,),
                        Container(
                          height: 4.5 * h,
                          width: 45 * w,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black
                            )
                          ),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                width: 15*w,
                                child: Text(
                                  'Total Fee',
                                  style: TextStyle(fontSize: 1.3 * w, fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                width: 15*w,
                                child: Text(
                                  '10000034234',
                                  style: TextStyle(fontSize: 1.3 * w, fontWeight: FontWeight.bold),
                                ),
                              ),

                            ],
                          ),
                        ),

                        ],
                      )
                    ),
                  ),

                  SizedBox(height: 1.5*h,),

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
            ),
          );

        },
      ),
    );
  }
}
