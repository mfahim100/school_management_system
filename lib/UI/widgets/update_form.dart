import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/delete_button.dart';
import 'package:school_manegment_system/UI/widgets/student_text_form_field.dart';
import 'package:school_manegment_system/core/providers/student_provider.dart';
import 'package:school_manegment_system/core/providers/update_student_provider.dart';

import '../../core/constant/constant_decoration.dart';
import '../../core/constant/drop_down_menu_constant.dart';
import '../../core/models/StudentsModels.dart';
import 'custom_button.dart';
import 'drop_down_menu.dart';

class UpdateForm extends StatelessWidget {
  StudentsModels mdl = StudentsModels();

   UpdateForm({super.key,required this.mdl});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Dialog(
      child: Consumer<UpdateStudentProvider>(
        builder: (context, updateStudentProvider,child) {
        return Container(
          decoration:
          ConstantDecoration.studentAddFormContainerDecoration,
          width: 73 * w,
          height: 80 * h,
          child: Padding(
            padding: EdgeInsets.all(0.5 * w),
            child: Column(
              children: [
                Container(
                  width: 80 * w,
                  height: 65 * h,
                  decoration:
                  ConstantDecoration.studentAddFormContainerDecoration,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.all(1 * w),
                      child: Form(
                        key: updateStudentProvider.studentFormKey,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    StudentTextFormField(
                                      controller: updateStudentProvider.nameController,
                                      validator: updateStudentProvider.nameValidator,
                                      hintText: 'Student Name',
                                      labelText: 'Enter Student Name',
                                    ),
                                    StudentTextFormField(
                                      controller: updateStudentProvider.fatherCNIC,
                                      validator: updateStudentProvider.fatherCnicValidator,
                                      hintText: 'Father CNIC',
                                      labelText: 'Enter Father CNIC',
                                    ),
                                    StudentTextFormField(
                                      controller: updateStudentProvider.fatherOccupation,
                                      validator: updateStudentProvider.fatherOccupationValidator,
                                      hintText: 'Father Occupation',
                                      labelText: 'Father Occupation',
                                    ),
                                    StudentTextFormField(
                                      controller: updateStudentProvider.studentSection,
                                      validator: updateStudentProvider.studentSectionValidator,
                                      hintText: 'Section',
                                      labelText: 'Student Section',
                                    ),
                                    StudentTextFormField(
                                      controller: updateStudentProvider.address,
                                      validator: updateStudentProvider.addressValidator,
                                      hintText: 'Permanent Address',
                                      labelText: 'Permanent Address',
                                    ),
                                    CustomDropDownMenu(
                                      text: updateStudentProvider.genderSelected,
                                      items: DropDownMenuConstant.genderList,
                                      onChanged: (txt) =>
                                          updateStudentProvider.setGender(txt!),
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    StudentTextFormField(
                                      controller: updateStudentProvider.fatherName,
                                      validator: updateStudentProvider.fatherNameValidator,
                                      hintText: 'Student Father Name',
                                      labelText: 'Enter Student Father Name',
                                    ),
                                    StudentTextFormField(
                                      controller: updateStudentProvider.fatherMobile,
                                      validator: updateStudentProvider.fatherMobileValidator,
                                      hintText: 'Father Mobile Number',
                                      labelText: 'Enter Father Mobile Number',
                                    ),
                                    // StudentTextFormField(
                                    //   controller: studentFormProvider.dOB,
                                    //   validator: studentFormProvider.dObValidator,
                                    //   hintText:  'Date Of Birth',
                                    //   labelText: 'Enter Date Of Birth',
                                    // ),
                                    Container(
                                      width: 25*w,
                                      height: 06*h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(1*w),
                                          border: Border.all(
                                              color: Colors.black, width: 0.08*h)
                                      ),
                                      child: GestureDetector(
                                        onTap: () =>
                                            updateStudentProvider.setDOB(context),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 2*w),
                                            child: Text(
                                              updateStudentProvider
                                                  .dobString.toString(),style: TextStyle(
                                              fontSize: 1*w,
                                              color: Colors.white,
                                            ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 4*h,),

                                    StudentTextFormField(
                                      controller: updateStudentProvider.subStudentSection,
                                      validator: updateStudentProvider.studentSubSectionValidator,
                                      hintText: 'Sub Section',
                                      labelText: 'Student Sub Section',
                                    ),
                                    StudentTextFormField(
                                      controller: updateStudentProvider.lastSchool,
                                      hintText: 'School Last Attended',
                                      labelText: 'School Last Attended',
                                    ),
                                    CustomDropDownMenu(
                                      text: updateStudentProvider.religionSelected,
                                      items: DropDownMenuConstant.religionList,
                                      onChanged: (txt) =>
                                          updateStudentProvider.setReligion(txt!),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Center(
                              child: Text(
                                'Guardian Information',
                                style: TextStyle(
                                  // GoogleFonts.satisfy
                                  fontSize: 5 * h,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 2.5 * h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    StudentTextFormField(
                                      controller: updateStudentProvider.guardianName,
                                      validator: updateStudentProvider.guardianNameValidator,
                                      hintText: 'Guardian Name',
                                      labelText: 'Enter Guardian Name',
                                    ),
                                    StudentTextFormField(
                                      controller: updateStudentProvider.guardianCNIC,
                                      validator: updateStudentProvider.guardianCnicValidator,
                                      hintText: 'Guardian CNIC',
                                      labelText: 'Enter Guardian CNIC',
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    StudentTextFormField(
                                      controller: updateStudentProvider.guardianRelation,
                                      validator: updateStudentProvider.guardianRelationValidator,
                                      hintText: 'Relationship with Student',
                                      labelText: 'Relationship with Student',
                                    ),
                                    StudentTextFormField(
                                      controller: updateStudentProvider.guardianMobile,
                                      validator: updateStudentProvider.guardianMobileNumberValidator,
                                      hintText: 'Guardian Mobile Number',
                                      labelText: 'Guardian Mobile Number',
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Center(
                              child: Text(
                                'For Office',
                                style: TextStyle(
                                  // GoogleFonts.satisfy
                                  fontSize: 5 * h,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 2.5 * h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    StudentTextFormField(
                                      controller: updateStudentProvider.admissionNumber,
                                      // validator: studentFormProvider.admissionNumberValidator,
                                      hintText: 'Admission Number',
                                      labelText: 'Enter Admission Number',
                                    ),
                                    StudentTextFormField(
                                      controller: updateStudentProvider.admissionFee,
                                      validator: updateStudentProvider.admissionFeeValidator,
                                      hintText: 'Admission Fee',
                                      labelText: 'Enter Admission Fee',
                                    ),
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CustomDropDownMenu(
                                      text: updateStudentProvider.admittedClass,
                                      items: DropDownMenuConstant.classList,
                                      onChanged: (txt) =>
                                          updateStudentProvider.setClass(txt!),
                                    ),
                                    Container(
                                      width: 25*w,
                                      height: 06*h,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(1*w),
                                          border: Border.all(
                                              color: Colors.black, width: 0.06*h)
                                      ),
                                      child: GestureDetector(
                                        onTap: () =>
                                            updateStudentProvider.setDOA(context),
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: EdgeInsets.only(left: 2*w),
                                            child: Text(
                                              updateStudentProvider
                                                  .doaString.toString(),style: TextStyle(
                                              fontSize: 1*w,
                                              color: Colors.white,
                                            ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    SizedBox(height: 4*h,),
                                    // StudentTextFormField(
                                    //   validator: studentFormProvider.admissionDateValidator,
                                    //   hintText: 'Admission Date',
                                    //   labelText: 'Admission Date',
                                    // ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: h * 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        height: 06 * h,
                        width: 30 * w,
                        child: CustomButton(text: 'Submit', onPressed: () {
                          Provider.of<StudentProvider>(context,listen:false).getStudentByClassProvider(mdl.admittedClass!);
                          if(updateStudentProvider.studentFormKey.currentState!.validate()){
                            updateStudentProvider.updateStudentData();
                            Navigator.of(context).pop();
                           // studentFormProvider.insertData();
                          }
                        })),
                    SizedBox(
                        height: 06 * h,
                        width: 30 * w,
                        child: DeleteButton(text: 'Cancel', onPressed: () {
                          Navigator.of(context).pop();
                        })),
                  ],
                ),
              ],
            ),
          ),
        );

      },)
    );
  }
}
