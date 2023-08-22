import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';

import '../../core/constant/constant_decoration.dart';
import '../../core/models/Feemodel.dart';
import '../../core/providers/fee_provider.dart';
import 'delete_button.dart';

class MonthLyFeeDialog extends StatelessWidget {
  const MonthLyFeeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    double h = size.height / 100;
    double w = size.width / 100;
    return const Placeholder();
    // return Dialog(
    //   child: Consumer<FeeProvider>(
    //     builder: (context, feeProvider,child) {
    //       return Container(
    //         decoration: ConstantDecoration.adminPageLogInContainerDecoration,
    //         width: 70*w,
    //         height: 85*h,
    //         child: Column(
    //           children: [
    //             SizedBox(
    //               width: 80*w,
    //               height: 78*h,
    //               child:feeProvider.getFeeByClass.isEmpty?
    //               Center(child: Text("No Data Found",style: TextStyle(
    //                   fontSize: 5*w,
    //                   fontWeight: FontWeight.bold,
    //                   color: Colors.white
    //               ),))
    //                   :
    //               ListView.builder(
    //                   itemCount:
    //                   feeProvider.getFeeByClass.length,
    //                   itemBuilder: (context,index){
    //                     FeeModels mdl = feeProvider.getFeeByClass[index];
    //                     DateTime month = DateTime.fromMillisecondsSinceEpoch(mdl.month!);
    //                     String currentMonth = "${month.year}-${month.month}";
    //                     return Container(
    //                       decoration: ConstantDecoration.adminPageLogInContainerDecoration,
    //                       width: 80*w,
    //                       height: 07*h,
    //                       child: Padding(
    //                         padding:  EdgeInsets.all(0.5*w),
    //                         child: Row(
    //                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //                           children: [
    //                             SizedBox(
    //                               width: 20*w,
    //                               child: Text(mdl.name!,style: TextStyle(
    //                                   fontSize: 1.5*w,
    //                                   fontWeight: FontWeight.bold,
    //                                   color: Colors.white
    //                               ),),
    //                             ),
    //
    //                             SizedBox(
    //                               width: 10*w,
    //                               child: Text(mdl.totalFee.toString(),style: TextStyle(
    //                                   fontSize: 1.5*w,
    //                                   fontWeight: FontWeight.bold,
    //                                   color: Colors.white
    //                               ),),
    //                             ),
    //                             SizedBox(
    //                               width: 10*w,
    //                               child: Text(currentMonth,style: TextStyle(
    //                                   fontSize: 1.5*w,
    //                                   fontWeight: FontWeight.bold,
    //                                   color: Colors.white
    //                               ),),
    //                             ),
    //
    //                             SizedBox(
    //                               width: 20*w,
    //                               child: Text('mdl.status.toString()',style: TextStyle(
    //                                   fontSize: 1.5*w,
    //                                   fontWeight: FontWeight.bold,
    //                                   color: Colors.white
    //                               ),),
    //                             ),
    //
    //
    //
    //                           ],
    //                         ),
    //                       ),
    //                     );
    //                   }),
    //             ),
    //
    //             Row(
    //               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //               children: [
    //                 SizedBox(
    //                   height: 5*h,
    //                   width: 15*w,
    //                   child: StudentDetailButton(text: 'Print Data', onPressed: (){}),
    //                 ),
    //                 SizedBox(
    //                   height: 5*h,
    //                   width: 15*w,
    //                   child: DeleteButton(text: 'Cancel', onPressed: (){
    //                     Navigator.of(context).pop();
    //                   }),
    //                 ),
    //               ],
    //             )
    //           ],
    //         ),
    //       );
    //
    //     },
    //   ),
    // );
  }
}
