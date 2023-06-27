import 'package:flutter/material.dart';
import '../../../core/constant/constant_decoration.dart';
import '../../../core/constant/constant_text_styles.dart';
import '../widgets/custom_button.dart';
import '../widgets/student_text_form_field.dart';

class StudentAddForm extends StatelessWidget {
  const StudentAddForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return SizedBox(
    width: 73 * w,
        height: 80*h,
        child: SizedBox(
          child: Padding(
            padding: EdgeInsets.all(1*w),
            child: Column(
              children: [
                Center(
                  child: Text('Add Student',style: ConstantTextStyles.schoolNameStyle,),
                ),
                SizedBox(height: 1.5*h,),
                Container(
                  width: 70*w,
                  height: 55*h,
                  decoration: ConstantDecoration.studentAddFormContainerDecoration,
                  child:Padding(
                    padding:  EdgeInsets.all(1*w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            StudentTextFormField(hintText: 'Student Registration', labelText: 'Enter Student Registration Number',),
                            StudentTextFormField(hintText: 'Student Name', labelText: 'Enter Student Name',),
                            StudentTextFormField(hintText: 'Student Father Name', labelText: 'Enter Student Father Name',),
                            StudentTextFormField(hintText: 'Father NIC', labelText: 'Enter Father NIC',),
                            StudentTextFormField(hintText: 'Father Mobile Number', labelText: 'Enter Father Mobile Number',),
                            StudentTextFormField(hintText: 'DOB', labelText: 'Enter Student DOB',),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            StudentTextFormField(hintText: 'Address', labelText: 'Enter Student Address',),
                            StudentTextFormField(hintText: 'Class', labelText: 'Enter Student Class',),
                            StudentTextFormField(hintText: 'Previous School', labelText: 'Enter Previous School',),
                            StudentTextFormField(hintText: 'hint text', labelText: 'label Text',),
                            StudentTextFormField(hintText: 'hint text', labelText: 'label Text',),
                            StudentTextFormField(hintText: 'hint text', labelText: 'label Text',),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                SizedBox(
                    height: h*2,
                ),

                SizedBox(
                    height: 07*h,
                    // width: 30*w,
                    child: CustomButton(text: 'Submit', onPressed: (){})),

              ],
            ),
          ),

        ),
      );


  }
}
