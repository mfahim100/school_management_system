import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/core/models/DmcModels.dart';

import '../../core/constant/constant_decoration.dart';
import '../../core/constant/constant_text_styles.dart';
import '../../core/constant/drop_down_menu_constant.dart';
import '../../core/models/StudentsModels.dart';
import '../../core/providers/result_provider.dart';
import '../widgets/custom_button.dart';
import '../widgets/delete_button.dart';
import '../widgets/drop_down_menu.dart';
import '../widgets/student_text_form_field.dart';

class InsertResultOfPrimaryAndMiddle extends StatelessWidget {

  StudentsModels mdl = StudentsModels();

   InsertResultOfPrimaryAndMiddle({super.key,required this.mdl});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Dialog(
      child: Consumer<ResultProvider>(
        builder: (context, resultProvider, child) {
          return Container(
            width: 40 * w,
            height: 90 * h,
            decoration: ConstantDecoration.studentAddFormContainerDecoration,
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(2 * w),
                child: Form(
                  key: resultProvider.primaryAndMiddleClassesDmcKey,
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'Details Marks Sheet',
                          style: ConstantTextStyles.schoolNameStyle,
                        ),
                      ),
                      SizedBox(
                        height: 2 * h,
                      ),
                      CustomDropDownMenu(
                          text: 'Enter the Term',
                          items: DropDownMenuConstant.examType,
                          onChanged: (txt) => resultProvider.setExamType(txt!)),
                      StudentTextFormField(
                        controller: resultProvider.englishController,
                        validator: resultProvider.englishValidatorOfPrimaryMiddle,
                        hintText: 'English',
                        labelText: 'Enter Marks in English',
                      ),
                      StudentTextFormField(
                        controller: resultProvider.urduController,
                        validator: resultProvider.urduValidatorOfPrimaryMiddle,
                        hintText: 'Urdu',
                        labelText: 'Enter Marks in Urdu',
                      ),
                      StudentTextFormField(
                        controller: resultProvider.mathsController,
                        validator: resultProvider.mathsValidatorOfPrimaryMiddle,
                        hintText: 'Maths',
                        labelText: 'Enter Marks in Maths',
                      ),
                      StudentTextFormField(
                        controller: resultProvider.islamiatController,
                        validator: resultProvider.islamiatValidatorOfPrimaryMiddle,
                        hintText: 'Islamiat',
                        labelText: 'Enter Marks in Islamiat',
                      ),
                      StudentTextFormField(
                        controller: resultProvider.pakStudyController,
                        validator: resultProvider.pakStudyValidatorOfPrimaryMiddle,
                        hintText: 'Pak Study/Maloomat Amma',
                        labelText: 'Enter Marks in Pak Study Pak Study/Maloomat Amma',
                      ),
                      StudentTextFormField(
                        controller: resultProvider.lughatArabiaController,
                        validator: resultProvider.lughatArabiaValidatorOfPrimaryMiddle,
                        hintText: 'Lughat Arabia',
                        labelText: 'Enter Marks in Lughat Arabia',
                      ),
                      StudentTextFormField(
                        controller: resultProvider.naziraController,
                        validator: resultProvider.naziraValidatorOfPrimaryMiddle,
                        hintText: 'Nazira Quran',
                        labelText: 'Enter Marks in Nazira Quran',
                      ),
                      SizedBox(
                        height: 2 * h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                              height: 06 * h,
                              width: 15 * w,
                              child: CustomButton(
                                  text: 'Submit',
                                  onPressed: () {
                                    if (resultProvider.primaryAndMiddleClassesDmcKey.currentState!
                                        .validate()) {
                                      resultProvider.insertPrimaryAndMiddleClassesExamData(
                                          mdl.admissionNumber!,
                                          mdl.name!,
                                          mdl.admittedClass,
                                      mdl.fatherName);
                                    }
                                  })),
                          SizedBox(
                              height: 06 * h,
                              width: 15 * w,
                              child: DeleteButton(
                                  text: 'Cancel',
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  })),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
  }

