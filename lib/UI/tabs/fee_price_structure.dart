import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/custom_button.dart';
import 'package:school_manegment_system/UI/widgets/fee_structure_textfield.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';
import 'package:school_manegment_system/UI/widgets/student_fee_record_dialog.dart';
import 'package:school_manegment_system/core/constant/constant_decoration.dart';
import 'package:school_manegment_system/core/providers/fee_provider.dart';

import '../../core/models/StudentsModels.dart';

class FeePriceStructure extends StatelessWidget {


   const FeePriceStructure({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Consumer<FeeProvider>(
      builder: (context, feeProvider, child) {
        return SizedBox(
          height: 80 * h,
          child: SizedBox(
            height: 80 * h,
            width: 80 * w,
            child: Padding(
              padding: EdgeInsets.all(2 * w),
              child: Column(
                children: [
                  SizedBox(
                    height: 6 * h,
                    width: 60 * w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 10 * w,
                            child: FeeStructureTextField(
                              hintText: 'Monthly Fee',
                              labelText: 'Monthly Fee',
                              controller: feeProvider.feeSelection,
                            )),
                        SizedBox(
                            width: 15 * w,
                            child: StudentDetailButton(
                                text: 'Confirm Monthly',
                                onPressed: () =>
                                    feeProvider.setFeeToAllStudents(),
                            )),

                        SizedBox(
                            width: 10 * w,
                            child: FeeStructureTextField(
                              hintText: 'Exam Fee',
                              labelText: 'Exam Fee',
                              controller: feeProvider.examFeeSelection,
                            )),
                        SizedBox(
                            width: 15 * w,
                            child: StudentDetailButton(
                                text: 'Confirm Exam',
                                onPressed: (){
                                  feeProvider.setExamFeeToAllStudents();
                                }
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 1.5 * h,
                  ),
                  SizedBox(
                    height: 55 * h,
                    width: 70 * w,
                    child: ListView.builder(
                        itemCount: feeProvider.getStudentByClassList.length,
                        itemBuilder: (context, index) {
                          StudentsModels mdl =
                              feeProvider.getStudentByClassList[index];
                          return Container(
                            height: 09 * h,
                            decoration: ConstantDecoration
                                .adminPageLogInContainerDecoration,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: 05 * h,
                                  width: 08 * w,
                                  child: Text(
                                    mdl.admissionNumber!.toString(),
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 1.2 * w),
                                  ),
                                ),
                                SizedBox(
                                  height: 05 * h,
                                  width: 18 * w,
                                  child: Text(
                                    mdl.name!,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 1.2 * w,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 07 * h,
                                  width: 08 * w,
                                  child: FeeStructureTextField(
                                    hintText: 'Monthly',
                                    labelText: 'Monthly',
                                    controller:
                                        feeProvider.feeControllers[index],
                                  ),
                                ),
                                SizedBox(
                                  height: 07 * h,
                                  width: 08 * w,
                                  child: FeeStructureTextField(
                                    hintText: 'Exam Fee',
                                    labelText: 'Exam Fee',
                                    controller:feeProvider.examFeeControllers[index]
                                        // feeProvider.examFeeControllers[index],/
                                  ),
                                ),
                                SizedBox(
                                  height: 07 * h,
                                  width: 08 * w,
                                  child: FeeStructureTextField(
                                    hintText: 'Fine',
                                    labelText: 'Fine',
                                    controller:
                                        feeProvider.fineFeeController
                                  ),
                                ),
                                SizedBox(
                                  height: 05 * h,
                                  width: 09 * w,
                                  child: StudentDetailButton(text: 'View Data', onPressed: () {
                                    feeProvider.getFeeByNameProvider(mdl.name!);
                                    showDialog(context: context, builder: (context){
                                      return  StudentFeeRecordDialog();
                                    });
                                  }),
                                ),
                              ],
                            ),
                          );

                        }
                        ),
                  ),
                  SizedBox(
                    height: 1 * h,
                  ),
                  SizedBox(
                    width: 18*w,
                    height: 06*h,
                    child: CustomButton(text: 'Submit', onPressed: () {
                      feeProvider.insertFeeData();
                    }),
                  ),





                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
