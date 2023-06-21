import 'package:flutter/material.dart';
import 'package:school_manegment_system/UI/tabs/show_all_student.dart';
import '../../../core/constant/constant_decoration.dart';
import '../widgets/custom_class_list_button.dart';


class ClassesWithStudents extends StatelessWidget {
  const ClassesWithStudents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomClassListButton(text: 'Class 10th', onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                          return const ShowAllStudent();
                        }));
                      }, studentStrength: '20'),
                      CustomClassListButton(text: 'Class 9th', onPressed: (){}, studentStrength: '20'),
                      CustomClassListButton(text: 'Class 8th', onPressed: (){}, studentStrength: '20'),
                      CustomClassListButton(text: 'Class 7th', onPressed: (){}, studentStrength: '20'),
                      CustomClassListButton(text: 'Class 6th', onPressed: (){}, studentStrength: '20'),
                      CustomClassListButton(text: 'Class 5th', onPressed: (){}, studentStrength: '20'),

                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomClassListButton(text: 'Class 4th', onPressed: (){}, studentStrength: '20'),
                      CustomClassListButton(text: 'Class 3rd', onPressed: (){}, studentStrength: '20'),
                      CustomClassListButton(text: 'Class 2nd', onPressed: (){}, studentStrength: '20'),
                      CustomClassListButton(text: 'Class 1st', onPressed: (){}, studentStrength: '20'),
                      CustomClassListButton(text: 'Class KG', onPressed: (){}, studentStrength: '20'),
                      CustomClassListButton(text: 'Class Nursery', onPressed: (){}, studentStrength: '20'),


                    ],
                  ),
                ],
              ),
            ),
          )



        ],
      ),
    );
  }
}
