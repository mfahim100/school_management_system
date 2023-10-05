import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/drop_down_menu.dart';
import 'package:school_manegment_system/core/constant/drop_down_menu_constant.dart';
import 'package:school_manegment_system/core/providers/student_form_provider.dart';
import '../../../core/constant/constant_decoration.dart';
import '../widgets/custom_button.dart';
import '../widgets/student_text_form_field.dart';
import 'attendance_result.dart';

class StudentAddForm extends StatelessWidget {
  const StudentAddForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Consumer<StudentFormProvider>(
      builder: (context, studentFormProvider, child) {
        return SizedBox(
          width: 73 * w,
          height: 80 * h,
          child: SizedBox(
            child: Padding(
              padding: EdgeInsets.all(0.5 * w),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'Student Information',
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
                  Container(
                    width: 80 * w,
                    height: 60 * h,
                    decoration:
                        ConstantDecoration.studentAddFormContainerDecoration,
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.all(1 * w),
                        child: Form(
                          key: studentFormProvider.studentFormKey,
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
                                        controller: studentFormProvider.nameController,
                                        validator: studentFormProvider.nameValidator,
                                        hintText: 'Student Name',
                                        labelText: 'Enter Student Name',
                                      ),
                                      StudentTextFormField(
                                        controller: studentFormProvider.fatherCNIC,
                                        validator: studentFormProvider.fatherCnicValidator,
                                        maxLength: 13,
                                        hintText: 'Father CNIC',
                                        labelText: 'Enter Father CNIC',
                                      ),
                                      StudentTextFormField(
                                        controller: studentFormProvider.fatherOccupation,
                                        validator: studentFormProvider.fatherOccupationValidator,
                                        hintText: 'Father Occupation',
                                        labelText: 'Father Occupation',
                                      ),
                                      StudentTextFormField(
                                        controller: studentFormProvider.studentSection,
                                        validator: studentFormProvider.studentSectionValidator,
                                        hintText: 'Section',
                                        labelText: 'Student Section',
                                      ),
                                      StudentTextFormField(
                                        controller: studentFormProvider.address,
                                        validator: studentFormProvider.addressValidator,
                                        hintText: 'Permanent Address',
                                        labelText: 'Permanent Address',
                                      ),
                                      CustomDropDownMenu(
                                        text: 'Select Gender',
                                        items: DropDownMenuConstant.genderList,
                                         onChanged: (txt) =>
                                            studentFormProvider.setGender(txt!),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      StudentTextFormField(
                                        controller: studentFormProvider.fatherName,
                                        validator: studentFormProvider.fatherNameValidator,
                                        hintText: 'Student Father Name',
                                        labelText: 'Enter Student Father Name',
                                      ),
                                      StudentTextFormField(
                                        controller: studentFormProvider.fatherMobile,
                                        validator: studentFormProvider.fatherMobileValidator,
                                        maxLength: 11,
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
                                              studentFormProvider.setDOB(context),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(left: 2*w),
                                              child: Text(
                                                studentFormProvider
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
                                        controller: studentFormProvider.subStudentSection,
                                        validator: studentFormProvider.studentSubSectionValidator,
                                        hintText: 'Sub Section',
                                        labelText: 'Student Sub Section',
                                      ),
                                      StudentTextFormField(
                                        controller: studentFormProvider.lastSchool,
                                        hintText: 'School Last Attended',
                                        labelText: 'School Last Attended',
                                      ),
                                      CustomDropDownMenu(
                                        text: 'Select Religion',
                                        items: DropDownMenuConstant.religionList,
                                        onChanged: (txt) =>
                                            studentFormProvider.setReligion(txt!),
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
                                        controller: studentFormProvider.guardianName,
                                        validator: studentFormProvider.guardianNameValidator,
                                        hintText: 'Guardian Name',
                                        labelText: 'Enter Guardian Name',
                                      ),
                                      StudentTextFormField(
                                        controller: studentFormProvider.guardianCNIC,
                                        validator: studentFormProvider.guardianCnicValidator,
                                        maxLength: 13,
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
                                        controller: studentFormProvider.guardianRelation,
                                        validator: studentFormProvider.guardianRelationValidator,
                                        hintText: 'Relationship with Student',
                                        labelText: 'Relationship with Student',
                                      ),
                                      StudentTextFormField(
                                        controller: studentFormProvider.guardianMobile,
                                        validator: studentFormProvider.guardianMobileNumberValidator,
                                        maxLength: 11,
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
                                        // controller: studentFormProvider.admissionNumber,
                                       // validator: studentFormProvider.admissionNumberValidator,
                                        hintText: 'Admission Number',
                                        labelText: 'Enter Admission Number',
                                      ),
                                      StudentTextFormField(
                                        controller: studentFormProvider.admissionFee,
                                        validator: studentFormProvider.admissionFeeValidator,
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
                                        text: 'Admitted In Class',
                                        items: DropDownMenuConstant.classList,
                                        onChanged: (txt) =>
                                            studentFormProvider.setClass(txt!),
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
                                              studentFormProvider.setDOA(context),
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                              padding: EdgeInsets.only(left: 2*w),
                                              child: Text(
                                                studentFormProvider
                                                    .doaString.toString(),style: TextStyle(
                                                fontSize: 1*w,
                                                color: Colors.white,
                                              ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      // SizedBox(
                                      //   width: 25*w,
                                      //     height: 06*h,
                                      //   child:  DatePicker(informationDate: studentFormProvider.dobbbb,),
                                      // ),

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
                  SizedBox(
                      height: 06 * h,
                      width: 30 * w,
                      child: CustomButton(text: 'Submit', onPressed: () {
                        if(studentFormProvider.studentFormKey.currentState!.validate()){
                         studentFormProvider.insertData();
                        }
                      })),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
