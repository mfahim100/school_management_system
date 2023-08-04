import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/delete_button.dart';
import 'package:school_manegment_system/UI/widgets/drop_down_menu.dart';
import 'package:school_manegment_system/core/constant/drop_down_menu_constant.dart';
import '../../core/constant/constant_decoration.dart';
import '../../core/constant/constant_text_styles.dart';
import '../../core/models/StudentsModels.dart';
import '../../core/providers/result_provider.dart';
import '../widgets/custom_button.dart';
import '../widgets/student_text_form_field.dart';

class InsertResultOfHighClasses extends StatelessWidget {
  StudentsModels mdl = StudentsModels();

  InsertResultOfHighClasses({super.key, required this.mdl});

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
                  key: resultProvider.highClassesDmcKey,
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
                        validator: resultProvider.englishValidator,
                        hintText: 'English',
                        labelText: 'Enter Marks in English',
                      ),
                      StudentTextFormField(
                        controller: resultProvider.urduController,
                        validator: resultProvider.urduValidator,
                        hintText: 'Urdu',
                        labelText: 'Enter Marks in Urdu',
                      ),
                      StudentTextFormField(
                        controller: resultProvider.mathsController,
                        validator: resultProvider.mathsValidator,
                        hintText: 'Maths',
                        labelText: 'Enter Marks in Maths',
                      ),
                      StudentTextFormField(
                        controller: resultProvider.islamiatController,
                        validator: resultProvider.islamiatValidator,
                        hintText: 'Islamiat',
                        labelText: 'Enter Marks in Islamiat',
                      ),
                      StudentTextFormField(
                        controller: resultProvider.pakStudyController,
                        validator: resultProvider.pakStudyValidator,
                        hintText: 'Pak Study',
                        labelText: 'Enter Marks in Pak Study',
                      ),
                      StudentTextFormField(
                        controller: resultProvider.physicsController,
                        validator: resultProvider.physicsValidator,
                        hintText: 'Physics',
                        labelText: 'Enter Marks in Physics',
                      ),
                      StudentTextFormField(
                        controller: resultProvider.chemistryController,
                        validator: resultProvider.chemistryValidator,
                        hintText: 'Chemistry',
                        labelText: 'Enter Marks in Chemistry',
                      ),
                      StudentTextFormField(
                        controller: resultProvider.biologyController,
                        validator: resultProvider.biologyValidator,
                        hintText: 'Biology',
                        labelText: 'Enter Marks in Biology',
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
                                    if (resultProvider.highClassesDmcKey.currentState!
                                        .validate()) {
                                      resultProvider.insertHighClassesExamData(
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
