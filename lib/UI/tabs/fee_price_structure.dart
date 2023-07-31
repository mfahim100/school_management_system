import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/custom_button.dart';
import 'package:school_manegment_system/UI/widgets/fee_structure_textfield.dart';
import 'package:school_manegment_system/UI/widgets/monthly_fee_dialog.dart';
import 'package:school_manegment_system/UI/widgets/student_fee_record_dialog.dart';
import 'package:school_manegment_system/core/constant/constant_decoration.dart';
import 'package:school_manegment_system/core/models/Students.dart';
import 'package:school_manegment_system/core/providers/fee_provider.dart';

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
                            width: 40 * w,
                            child: FeeStructureTextField(
                              hintText: 'Total Fee',
                              labelText: 'Total Fee',
                              controller: feeProvider.feeSelection,
                            )),
                        SizedBox(
                            width: 15 * w,
                            child: CustomButton(
                                text: 'Confirm Fee',
                                onPressed: () =>
                                    feeProvider.setFeeToAllStudents())),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 1.5 * h,
                  ),
                  SizedBox(
                    height: 50 * h,
                    width: 60 * w,
                    child: ListView.builder(
                        itemCount: feeProvider.getStudentByClassList.length,
                        itemBuilder: (context, index) {
                          Students mdl =
                              feeProvider.getStudentByClassList[index];
                          return Container(
                            height: 07 * h,
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
                                  width: 09 * w,
                                  child: FeeStructureTextField(
                                    hintText: 'fee',
                                    labelText: 'fee',
                                    controller:
                                        feeProvider.feeControllers[index],
                                  ),
                                ),

                                SizedBox(
                                  height: 05 * h,
                                  width: 09 * w,
                                  child: CustomButton(text: 'View Data', onPressed: () {
                                    feeProvider.getFeeByNameProvider(mdl.name!);
                                    showDialog(context: context, builder: (context){
                                      return const StudentFeeRecordDialog();
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
                    height: .5 * h,
                  ),
                  SizedBox(
                    width: 12*w,
                    height: 06*h,
                    child: CustomButton(text: 'Submit', onPressed: () {
                      feeProvider.insertFeeData();
                    }),
                  ),
                  SizedBox(
                    height: 1 * h,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                    SizedBox(
                      width: 12*w,
                      height: 06*h,
                      child: CustomButton(text: 'Search Student', onPressed: () {}),

                    ),
                    SizedBox(
                      width: 12*w,
                      height: 06*h,
                      child: CustomButton(text: 'Monthly Fee', onPressed: () {
                        feeProvider.getFeeByClassProvider();
                        showDialog(context: context, builder: (context){
                          return const MonthLyFeeDialog();
                        });

                      }),
                    ),


                  ],)



                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
