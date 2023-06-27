import 'package:flutter/material.dart';
import '../../core/constant/constant_decoration.dart';
import '../../core/constant/constant_text_styles.dart';
import '../widgets/custom_button.dart';
import '../widgets/student_text_form_field.dart';

class Dmc extends StatefulWidget {
  const Dmc({super.key});

  @override
  State<Dmc> createState() => _DmcState();
}

class _DmcState extends State<Dmc> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Dialog(
      child: Container(
        width: 40*w,
        height: 90*h,
        decoration: ConstantDecoration.studentAddFormContainerDecoration,
      child: Column(
        children: [
          Padding(
            padding:  EdgeInsets.all(1*w),
            child: Center(
              child: Text('Details Marks Sheet',style: ConstantTextStyles.schoolNameStyle,),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              StudentTextFormField(hintText: 'English', labelText: 'Enter Marks in English',),
              StudentTextFormField(hintText: 'Urdu', labelText: 'Enter Marks in Urdu',),
              StudentTextFormField(hintText: 'Maths', labelText: 'Enter Marks in Maths',),
              StudentTextFormField(hintText: 'Islamiat', labelText: 'Enter Marks in Islamiat',),
              StudentTextFormField(hintText: 'Pak Study', labelText: 'Enter Marks in Pak Study',),
              StudentTextFormField(hintText: 'Physics', labelText: 'Enter Marks in Physics',),
              StudentTextFormField(hintText: 'Chemistry', labelText: 'Enter Marks in Chemistry',),
              StudentTextFormField(hintText: 'Biology', labelText: 'Enter Marks in Biology',),
              SizedBox(
                  height: 07*h,
                  // width: 30*w,
                  child: CustomButton(text: 'Submit', onPressed: (){})),

              SizedBox(height: 1.5*h,),

              SizedBox(
                  height: 07*h,
                  // width: 30*w,
                  child: CustomButton(text: 'Cancel', onPressed: (){
                    Navigator.of(context).pop();
                  })),


            ],
          ),



        ],
      ),
    ),);
  }
}
