import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';
import 'package:school_manegment_system/core/models/DmcModels.dart';
import 'package:school_manegment_system/core/models/Students.dart';
import 'package:school_manegment_system/core/providers/result_provider.dart';

import '../../core/constant/constant_decoration.dart';
import 'delete_button.dart';

class ShowResultByClassAndAdmissionNumber extends StatelessWidget {

  // Students std = Students();

   const ShowResultByClassAndAdmissionNumber({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Dialog(
      child: Consumer<ResultProvider>(
        builder: (context, resultProvider,child) {
          return Container(
            decoration: ConstantDecoration.adminPageLogInContainerDecoration,
            width: 70*w,
            height: 85*h,
            child: Column(
              children: [
                SizedBox(
                  width: 80*w,
                  height: 78*h,
                  child:resultProvider.getResultByAdmissionNumberAndNameList.isEmpty?
                  Center(child: Text("No Data Found",style: TextStyle(
                      fontSize: 5*w,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),))
                      :
                  ListView.builder(
                      itemCount:
                      resultProvider.getResultByAdmissionNumberAndNameList.length,
                      itemBuilder: (context,index){
                        DmcModels mdl = resultProvider.getResultByAdmissionNumberAndNameList[index];
                        return Container(
                          decoration: ConstantDecoration.adminPageLogInContainerDecoration,
                          width: 80*w,
                          height: 07*h,
                          child: Padding(
                            padding:  EdgeInsets.all(0.5*w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  width: 20*w,
                                  child: Text(mdl.name!,style: TextStyle(
                                      fontSize: 1.5*w,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),),
                                ),

                                SizedBox(
                                  width: 10*w,
                                  child: Text(mdl.admittedClass!,style: TextStyle(
                                      fontSize: 1.5*w,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),),
                                ),
                                SizedBox(
                                  width: 10*w,
                                  child: Text(mdl.totalMarks.toString(),style: TextStyle(
                                      fontSize: 1.5*w,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),),
                                ),

                                SizedBox(
                                  width: 20*w,
                                  child: Text(mdl.percentage.toString(),style: TextStyle(
                                      fontSize: 1.5*w,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                  ),),
                                ),



                              ],
                            ),
                          ),
                        );
                      }),
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
    );;
  }
}
