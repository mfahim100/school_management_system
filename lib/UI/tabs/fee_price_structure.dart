import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/custom_button.dart';
import 'package:school_manegment_system/UI/widgets/fee_structure_textfield.dart';
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
      builder: (context, feeProvider,child) {
        return SizedBox(
          width: 73 * w,
          child: SizedBox(
            height: 80*h,
            width: 80*w,
            child: Padding(
              padding:  EdgeInsets.all(2*w),
              child: Column(
                children: [
                  SizedBox(
                    height: 6*h,
                    width: 60*w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 40*w,
                            child: FeeStructureTextField(hintText: 'Total Fee', labelText: 'Total Fee',)
                        ),
                        SizedBox(
                            width: 15*w,
                            child: CustomButton(text: 'Confirm Fee', onPressed: (){})),
                      ],
                    ),
                  ),

                  SizedBox(height: 0.5*h,),

                  SizedBox(
                    height: 55*h,
                    width: 60*w,
                    child: ListView.builder(
                        itemCount: feeProvider.getStudentByClassList.length,
                        itemBuilder: (context,index){
                          Students mdl = feeProvider.getStudentByClassList[index];
                          return Container(
                            height: 09*h,
                            decoration: ConstantDecoration.adminPageLogInContainerDecoration,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                 Text(mdl.admissionNumber!.toString(),style: const TextStyle(
                                    color: Colors.white
                                ),),
                                 Text(mdl.name!,style: const TextStyle(
                                    color: Colors.white
                                ),),
                                SizedBox(
                                  height: 07*h,
                                  width: 07*w,
                                  child: FeeStructureTextField(hintText: 'fee', labelText: 'fee',),
                                ),

                              ],
                            ),
                          );
                        }),
                  ),

                  SizedBox(height: 1*h,),


                  CustomButton(text: 'Submit', onPressed: (){}),

                ],
              ),
            ),

          ),

        );


      },

    );
  }
}
