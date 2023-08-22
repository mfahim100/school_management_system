import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';
import 'package:school_manegment_system/core/providers/printing_provider.dart';
import '../../core/constant/constant_decoration.dart';
import '../../core/constant/constant_text.dart';
import '../../core/models/DmcModels.dart';
import '../../core/providers/result_provider.dart';
import 'delete_button.dart';
import 'dmc_marks_row.dart';
import 'dmc_text_widget.dart';


class ShowAllClassResult extends StatelessWidget {

  const ShowAllClassResult({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Dialog(
      child: Consumer<ResultProvider>(
        builder: (context, resultProvider, child) {
          return Container(
            decoration: ConstantDecoration.adminPageLogInContainerDecoration,
            width: 60 * w,
            height: 85 * h,
            child: Column(
              children: [
                SizedBox(
                  width: 60 * w,
                  height: 78 * h,
                  child: resultProvider.getResultByClass
                      .isEmpty ?
                  Center(child: Text("No Data Found", style: TextStyle(
                      fontSize: 5 * w,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),))
                      :
                  ListView.builder(
                      itemCount:
                      resultProvider.getResultByClass
                          .length,
                      itemBuilder: (context, index) {
                        DmcModels mdl = resultProvider
                            .getResultByClass[index];
                        return
                          mdl.admittedClass == '10th' ?
                          Padding(
                            padding: EdgeInsets.all(0.5 * w),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 25 * h,
                                  width: 50 * w,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceEvenly,
                                    children: [
                                      Container(
                                        width: 10 * w,
                                        height: 22 * h,
                                        color: Colors.green,
                                        // image: AssetImage("")
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceEvenly,
                                        children: [
                                          Text(ConstantText.schoolNameForDmc,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 2.5 * w,
                                                color: Colors.white
                                            ),),
                                          Text('&', style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 2.5 * w,
                                              color: Colors.white
                                          ),),
                                          Text('Modern Science School System',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 2.5 * w,
                                                color: Colors.white
                                            ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                // SizedBox(height: .5 * w,),


                                DmcTextWidget(name: mdl.name!,
                                  fatherName: mdl.fatherName!,
                                  admissionNumber: mdl.admissionNumber!,
                                  examType: mdl.examType!,),

                                // SizedBox(height: .5 * w,),

                                SizedBox(
                                    height: 68 * h,
                                    width: 50 * w,
                                    child: Padding(
                                      padding: EdgeInsets.all(.5 * w),
                                      child: Column(
                                        children: [
                                          const DmcMarksRow(subject: 'Subject',
                                            totalMarks: 'Total Marks',
                                            obtainedMarks: 'Obtained Marks',),
                                          DmcMarksRow(subject: 'English', totalMarks: '75', obtainedMarks: mdl.english!.toString()),
                                          DmcMarksRow(subject: 'Urdu', totalMarks: '75', obtainedMarks: mdl.urdu!.toString()),
                                          DmcMarksRow(subject: 'Maths', totalMarks: '75', obtainedMarks: mdl.maths!.toString()),
                                          DmcMarksRow(subject: 'Islamiat', totalMarks: '50', obtainedMarks: mdl.islamiat!.toString()),
                                          DmcMarksRow(subject: 'Pakistan Study', totalMarks: '50', obtainedMarks: mdl.pakStudy!.toString()),
                                          DmcMarksRow(subject: 'Chemistry', totalMarks: '75', obtainedMarks: mdl.chemistry!.toString()),
                                          DmcMarksRow(subject: 'Biology', totalMarks: '75', obtainedMarks: mdl.biology!.toString()),
                                          DmcMarksRow(subject: 'Physics', totalMarks: '75', obtainedMarks: mdl.physics!.toString()),
                                          DmcMarksRow(subject: '', totalMarks: '550', obtainedMarks: mdl.totalMarks!.toString()),
                                          DmcMarksRow(subject: '', totalMarks: 'Percentage', obtainedMarks: mdl.percentage!.toString()),
                                          DmcMarksRow(subject: '', totalMarks: 'Grade', obtainedMarks: mdl.grade!),



                                        ],
                                      ),
                                    )
                                ),

                                Divider(height: 1*h,),

                              ],
                            ),
                        ):
                          mdl.admittedClass == '9th' ?
                          Padding(
                            padding: EdgeInsets.all(0.5 * w),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 25 * h,
                                  width: 50 * w,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceEvenly,
                                    children: [
                                      Container(
                                        width: 10 * w,
                                        height: 22 * h,
                                        color: Colors.green,
                                        // image: AssetImage("")
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceEvenly,
                                        children: [
                                          Text(ConstantText.schoolNameForDmc,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 2.5 * w,
                                                color: Colors.white
                                            ),),
                                          Text('&', style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 2.5 * w,
                                              color: Colors.white
                                          ),),
                                          Text('Modern Science School System',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 2.5 * w,
                                                color: Colors.white
                                            ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                // SizedBox(height: .5 * w,),


                                DmcTextWidget(name: mdl.name!,
                                  fatherName: mdl.fatherName!,
                                  admissionNumber: mdl.admissionNumber!,
                                  examType: mdl.examType!,),

                                // SizedBox(height: .5 * w,),

                                SizedBox(
                                    height: 68 * h,
                                    width: 50 * w,
                                    child: Padding(
                                      padding: EdgeInsets.all(.5 * w),
                                      child: Column(
                                        children: [
                                          const DmcMarksRow(subject: 'Subject',
                                            totalMarks: 'Total Marks',
                                            obtainedMarks: 'Obtained Marks',),
                                          DmcMarksRow(subject: 'English', totalMarks: '75', obtainedMarks: mdl.english!.toString()),
                                          DmcMarksRow(subject: 'Urdu', totalMarks: '75', obtainedMarks: mdl.urdu!.toString()),
                                          DmcMarksRow(subject: 'Maths', totalMarks: '75', obtainedMarks: mdl.maths!.toString()),
                                          DmcMarksRow(subject: 'Islamiat', totalMarks: '50', obtainedMarks: mdl.islamiat!.toString()),
                                          DmcMarksRow(subject: 'Pakistan Study', totalMarks: '50', obtainedMarks: mdl.pakStudy!.toString()),
                                          DmcMarksRow(subject: 'Chemistry', totalMarks: '75', obtainedMarks: mdl.chemistry!.toString()),
                                          DmcMarksRow(subject: 'Biology', totalMarks: '75', obtainedMarks: mdl.biology!.toString()),
                                          DmcMarksRow(subject: 'Physics', totalMarks: '75', obtainedMarks: mdl.physics!.toString()),
                                          DmcMarksRow(subject: '', totalMarks: '550', obtainedMarks: mdl.totalMarks!.toString()),
                                          DmcMarksRow(subject: '', totalMarks: 'Percentage', obtainedMarks: mdl.percentage!.toString()),
                                          DmcMarksRow(subject: '', totalMarks: 'Grade', obtainedMarks: mdl.grade!),



                                        ],
                                      ),
                                    )
                                ),

                                Divider(height: 1*h,),

                              ],
                            ),
                          ):
                          Padding(
                            padding: EdgeInsets.all(0.5 * w),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 25 * h,
                                  width: 50 * w,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceEvenly,
                                    children: [
                                      Container(
                                        width: 10 * w,
                                        height: 22 * h,
                                        color: Colors.green,
                                        // image: AssetImage("")
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment
                                            .spaceEvenly,
                                        children: [
                                          Text(ConstantText.schoolNameForDmc,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 2.5 * w,
                                                color: Colors.white
                                            ),),
                                          Text('&', style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 2.5 * w,
                                              color: Colors.white
                                          ),),
                                          Text('Modern Science School System',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 2.5 * w,
                                                color: Colors.white
                                            ),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),

                                // SizedBox(height: .5 * w,),


                                DmcTextWidget(name: mdl.name!,
                                  fatherName: mdl.fatherName!,
                                  admissionNumber: mdl.admissionNumber!,
                                  examType: mdl.examType!,),

                                // SizedBox(height: .5 * w,),

                                SizedBox(
                                    height: 68 * h,
                                    width: 50 * w,
                                    child: Padding(
                                      padding: EdgeInsets.all(.5 * w),
                                      child: Column(
                                        children: [
                                          const DmcMarksRow(subject: 'Subject',
                                            totalMarks: 'Total Marks',
                                            obtainedMarks: 'Obtained Marks',),
                                          DmcMarksRow(subject: 'English', totalMarks: '100', obtainedMarks: mdl.english!.toString()),
                                          DmcMarksRow(subject: 'Urdu', totalMarks: '100', obtainedMarks: mdl.urdu!.toString()),
                                          DmcMarksRow(subject: 'Maths', totalMarks: '100', obtainedMarks: mdl.maths!.toString()),
                                          DmcMarksRow(subject: 'Islamiat', totalMarks: '100', obtainedMarks: mdl.islamiat!.toString()),
                                          DmcMarksRow(subject: 'Pakistan Study', totalMarks: '100', obtainedMarks: mdl.pakStudy!.toString()),
                                          DmcMarksRow(subject: 'Lughat Arabia', totalMarks: '100', obtainedMarks: mdl.lughatArabia!.toString()),
                                          DmcMarksRow(subject: 'Nazira', totalMarks: '100', obtainedMarks: mdl.nazira!.toString()),
                                          DmcMarksRow(subject: '', totalMarks: '700', obtainedMarks: mdl.totalMarks!.toString()),
                                          DmcMarksRow(subject: '', totalMarks: 'Percentage', obtainedMarks: mdl.percentage!.toString()),
                                          DmcMarksRow(subject: '', totalMarks: 'Grade', obtainedMarks: mdl.grade!),


                                        ],
                                      ),
                                    )
                                ),

                                Divider(height: 1*h,),

                              ],
                            ),
                          );
                      }),
                ),


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 5 * h,
                      width: 15 * w,
                      child: Consumer<PrintingProvider>(builder: ( context,printingProvider,child) {
                        return StudentDetailButton(text: 'Print', onPressed: (){
                          printingProvider.printDmcOfAllClasses(resultProvider);
                        });

                      },),
                    ),
                    SizedBox(
                      height: 5 * h,
                      width: 15 * w,
                      child: DeleteButton(text: 'Cancel', onPressed: () {
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
