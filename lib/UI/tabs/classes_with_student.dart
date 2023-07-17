import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/core/providers/student_provider.dart';
import '../../../core/constant/constant_decoration.dart';
import '../../core/providers/menu_aap_provider.dart';
import '../widgets/custom_class_list_button.dart';


class ClassesWithStudents extends StatelessWidget {
  const ClassesWithStudents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Consumer<StudentProvider>(
      builder: (BuildContext context, studentProvider, Widget? child) {
        return SizedBox(
          width: 73 * w,
          height: 80*h,
          child:  Column(
            children: [
              Container(
                  width: 70 * w,
                  height: 80*h,
                  decoration: ConstantDecoration.adminPageLogInContainerDecoration,
                  child: Padding(
                    padding:  EdgeInsets.all(1*w),
                    child: Consumer<MenuAapProvider>(
                        builder: (BuildContext context, menuAapProvider,child){
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomClassListButton(text: 'Class 10th', onPressed: (){
                                    menuAapProvider.setIndexTab(5);
                                    studentProvider.getStudentByClassProvider('10th');
                                  }, studentStrength: '20'),
                                  CustomClassListButton(text: 'Class 9th', onPressed: (){
                                    menuAapProvider.setIndexTab(5);
                                    studentProvider.getStudentByClassProvider('9th');
                                  }, studentStrength: '20'),
                                  CustomClassListButton(text: 'Class 8th', onPressed: (){
                                    menuAapProvider.setIndexTab(5);
                                    studentProvider.getStudentByClassProvider('8th');
                                  }, studentStrength: '20'),
                                  CustomClassListButton(text: 'Class 7th', onPressed: (){
                                    menuAapProvider.setIndexTab(5);
                                    studentProvider.getStudentByClassProvider('7th');
                                  }, studentStrength: '20'),
                                  CustomClassListButton(text: 'Class 6th', onPressed: (){
                                    menuAapProvider.setIndexTab(5);
                                    studentProvider.getStudentByClassProvider('6th');
                                  }, studentStrength: '20'),
                                  CustomClassListButton(text: 'Class 5th', onPressed: (){
                                    menuAapProvider.setIndexTab(5);
                                    studentProvider.getStudentByClassProvider('5th');
                                  }, studentStrength: '20'),

                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomClassListButton(text: 'Class 4th', onPressed: (){
                                    menuAapProvider.setIndexTab(5);
                                    studentProvider.getStudentByClassProvider('4th');
                                  }, studentStrength: '20'),
                                  CustomClassListButton(text: 'Class 3rd', onPressed: (){
                                    menuAapProvider.setIndexTab(5);
                                    studentProvider.getStudentByClassProvider('3rd');
                                  }, studentStrength: '20'),
                                  CustomClassListButton(text: 'Class 2nd', onPressed: (){
                                    menuAapProvider.setIndexTab(5);
                                    studentProvider.getStudentByClassProvider('2nd');
                                  }, studentStrength: '20'),
                                  CustomClassListButton(text: 'Class 1st', onPressed: (){
                                    menuAapProvider.setIndexTab(5);
                                    studentProvider.getStudentByClassProvider('1st');
                                  }, studentStrength: '20'),
                                  CustomClassListButton(text: 'Class KG', onPressed: (){
                                    menuAapProvider.setIndexTab(5);
                                    studentProvider.getStudentByClassProvider('K.G');
                                  }, studentStrength: '20'),
                                  CustomClassListButton(text: 'Class Nursery', onPressed: (){
                                    menuAapProvider.setIndexTab(5);
                                    studentProvider.getStudentByClassProvider('Nursury');
                                  }, studentStrength: '20'),


                                ],
                              ),
                            ],
                          );
                        }

                    ),
                  )


              ),
            ],
          ),
        );
      },

    );
  }
}
