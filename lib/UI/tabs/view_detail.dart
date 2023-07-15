import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';
import 'package:school_manegment_system/core/constant/constant_decoration.dart';
import 'package:school_manegment_system/core/providers/student_form_provider.dart';

import '../../core/models/Students.dart';
import '../../core/providers/student_provider.dart';
import '../widgets/view_detail_row.dart';

class ViewDetail extends StatelessWidget {
   Students mdl = Students();
   ViewDetail({super.key,required this.mdl});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Dialog(
      child: Consumer<StudentProvider>(
        builder: (context, studentProvider,child) {
          return Container(
            width: 40*w,
            height: 90*h,
            decoration: ConstantDecoration.adminPageLogInContainerDecoration,
            child:  Padding(
              padding:  EdgeInsets.all(1*w),
              child: Column(
                children: [
                   ViewDetailRow(text: 'Admission Number',value: mdl.admissionNumber!,),
                   ViewDetailRow(text: 'Name',value: mdl.name!,),
                   ViewDetailRow(text: 'Father Name',value: mdl.fatherName!,),
                   ViewDetailRow(text: 'Father Cnic',value: mdl.fatherCNIC!,),
                   ViewDetailRow(text: 'Father Mobile',value: mdl.fatherMOBILE!,),
                   ViewDetailRow(text: 'Father Date Of Birth',value: mdl.dob.toString()!,),
                   ViewDetailRow(text: 'Student Section',value: mdl.studentSection!,),
                   ViewDetailRow(text: 'Student Sub Section',value: mdl.studentSubSection!,),
                   ViewDetailRow(text: 'Address',value: mdl.address!,),
                   ViewDetailRow(text: 'Last School',value: mdl.lastSchool!,),
                   ViewDetailRow(text: 'Religion',value: mdl.religion!,),
                   ViewDetailRow(text: 'Guardian Name',value: mdl.guardianName!,),
                   ViewDetailRow(text: 'Guardian Relation',value: mdl.guardianRelation!,),
                   ViewDetailRow(text: 'Guardian Cnic',value: mdl.guardianCNIC!,),
                   ViewDetailRow(text: 'Guardian Mobile',value: mdl.guardianMobile!,),
                   ViewDetailRow(text: 'Class',value: mdl.admittedClass!,),
                   ViewDetailRow(text: 'Admission Date',value: mdl.admissionDate!.toString(),),

                  SizedBox(height: 2*h,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      StudentDetaileButton(text: "Update", onPressed: (){}),
                      StudentDetaileButton(text: "Cancel", onPressed: (){
                        Navigator.of(context).pop();
                      }),
                    ],
                  )

                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
