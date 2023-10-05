import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/tabs/insert_resullt_of_primary_and_middle.dart';
import 'package:school_manegment_system/UI/widgets/custom_button.dart';
import 'package:school_manegment_system/UI/widgets/show_all_class_result_of_high_class.dart';
import 'package:school_manegment_system/UI/widgets/show_result_of_primary_and_middle_classes.dart';
import 'package:school_manegment_system/UI/widgets/show_result_of_student_of_high_class.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';
import 'package:school_manegment_system/core/constant/constant_decoration.dart';
import 'package:school_manegment_system/core/providers/result_provider.dart';

import '../../core/models/StudentsModels.dart';
import 'insert_result_of_high_classess.dart';

class ResultClass extends StatelessWidget {
  const ResultClass({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Consumer<ResultProvider>(
      builder: (context, resultProvider,child) {
        return SizedBox(
          width: 73 * w,
          height: 80*h,
          child: Column(
            children: [
              SizedBox(
                height: 75*h,
                width: 70*w,
                child: ListView.builder(
                    itemCount: resultProvider.getStudentByClassList.length,
                    itemBuilder: (context,index){
                      StudentsModels mdl = resultProvider.getStudentByClassList[index];
                      return Container(
                        height: 09*h,
                        width: 75*w,
                        decoration: ConstantDecoration.adminPageLogInContainerDecoration,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                             SizedBox(
                               width:5.5*w,
                               child: Text(mdl.admissionNumber!.toString(),
                                 style:  TextStyle(
                                  color: Colors.white,fontSize: 1.7*w,
                            ),),
                             ),
                             SizedBox(
                               width:14*w,
                               child: Text(mdl.name!,style:  TextStyle(
                                 color: Colors.white,fontSize: 1.5*w,
                            ),),
                             ),
                             SizedBox(
                               width:14*w,
                               child: Text(mdl.fatherName!,style:  TextStyle(
                                 color: Colors.white,fontSize: 1.5*w,
                            ),),
                             ),

                            SizedBox(
                                width:10*w,
                                height: 05*h,
                                child: StudentDetailButton(text: 'View Detail', onPressed: (){
                                  resultProvider.getResultByAdmissionNumberAndNameProvider(mdl.name!, mdl.admissionNumber!);
                                  showDialog(
                                      barrierDismissible: false,
                                      context: context, builder: (context)
                                  {
                                    return  mdl.admittedClass=='10th'?
                                      const ShowResultOfStudentOfHighClass():
                                    mdl.admittedClass=='9th'?const ShowResultOfStudentOfHighClass():
                                        const ShowResultOfPrimaryAndMiddleClasses();
                                  });
                                })),
                            SizedBox(
                              width: 10*w,
                              height: 05*h,
                              child: StudentDetailButton(text: 'Insert Result', onPressed: (){
                                showDialog(
                                    barrierDismissible: false,
                                    context: context, builder: (context){
                                  return mdl.admittedClass == '10th'?
                                    InsertResultOfHighClasses(mdl: mdl):
                                  mdl.admittedClass == '9th'? InsertResultOfHighClasses(mdl: mdl):InsertResultOfPrimaryAndMiddle(mdl: mdl);
                                });
                              }),
                            ),

                          ],
                        ),
                      );
                    }),
              ),

              SizedBox(
                  height: 5*h,
                  width: 20*w,
                  child: StudentDetailButton(text: 'Show All Class Result', onPressed: (){
                    resultProvider.getResultByClassProvider();
                    showDialog(
                        barrierDismissible: false,
                        context: context, builder: (context){
                      return
                        const ShowAllClassResult();
                    });

                  })),
            ],
          ),

        );
      },

    );
  }
}
