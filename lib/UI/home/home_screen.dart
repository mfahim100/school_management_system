import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/tabs/student_add_from.dart';
import 'package:school_manegment_system/core/providers/menu_aap_provider.dart';
import '../../core/constant/constant_decoration.dart';
import '../../core/constant/constant_text.dart';
import '../tabs/attendance.dart';
import '../tabs/classes.dart';
import '../tabs/classes_with_student.dart';
import '../tabs/dashboard.dart';
import '../widgets/custom_button.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Consumer<MenuAapProvider>(
  builder: (context, menuAapProvider, child) {
  return Scaffold(
    floatingActionButton:
    menuAapProvider.indexTab==0?null:
    menuAapProvider.indexTab==1?SizedBox(
      height: 07*h,
      width: 04*w,
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){
             menuAapProvider.setIndexTab(4);
        },child: const Icon(Icons.add,color: Colors.black,),),
    ):
    menuAapProvider.indexTab==2?SizedBox(
      height: 07*h,
      width: 04*w,
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: (){},child: const Icon(Icons.add,color: Colors.black,),),
    ):
    menuAapProvider.indexTab==3?null:
        null
    ,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SizedBox(
            height: h * 100,
            width: w * 100,
            child: Row(
              children: [
                Container(
                  height: 100 * h,
                  width: 25 * w,
                  decoration:
                  ConstantDecoration.adminPageLogInContainerDecoration,
                  child: Column(
                    children: [
                      SizedBox(
                        height: h * 2,
                      ),
                      InkWell(
                        onTap:  ()=>menuAapProvider.setIndexTab(0),
                        child: Center(
                          child: Text('Admin Panel',
                              style: GoogleFonts.satisfy(
                                fontSize: 08 * h,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                        ),
                      ),
                      SizedBox(
                        height: h * 10,
                      ),
                      SizedBox(
                          width: w*30,
                          height: h*6,
                          child: CustomButton(text: 'Dashboard', onPressed:
                                ()=>menuAapProvider.setIndexTab(0)
                          ),
                      ),
                      SizedBox(height: h*3,),

                      SizedBox(
                          height: h*6,
                          width: w*30,
                          child: CustomButton(text: 'Students', onPressed:
                                ()=>menuAapProvider.setIndexTab(1)
                          )),
                      SizedBox(height: h*3,),

                      SizedBox(
                          width: w*30,
                          height: h*6,
                          child: CustomButton(text: 'Classes', onPressed:
                                ()=>menuAapProvider.setIndexTab(2)
                          )),

                      SizedBox(height: h*3,),
                      SizedBox(
                          width: w*30,
                          height: h*6,
                          child: CustomButton(text: 'Attendance', onPressed: ()=>
                                menuAapProvider.setIndexTab(3)
                          )),
                      SizedBox(height: h*3,),


                    ],
                  ),
                ),

                Container(
                  height: 100 * h,
                  width: 0.5 * w,
                  color: Colors.black,
                ),


                Container(
                  height: 100 * h,
                  width: 73 * w,
                  decoration:
                  ConstantDecoration.adminPageLogInContainerDecoration,
                  child: Column(
                    children: [
                      SizedBox(
                        height: h * 1,
                      ),


                      Container(
                          decoration:
                          ConstantDecoration.adminPageLogInContainerDecoration,
                        padding: EdgeInsets.all(1*w),
                        child: Column(
                          children: [
                            Container(
                              height: 10*h,
                              decoration: ConstantDecoration
                                  .adminPageLogInContainerDecoration,
                              child: Center(
                                child: Text(
                                  ConstantText.schoolName,
                                  style: GoogleFonts.satisfy(
                                    fontSize: 06 * h,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 3*h,),
                            menuAapProvider.indexTab==0?
                            const Dashboard()
                                :menuAapProvider.indexTab==1?
                            const Classes()
                                :menuAapProvider.indexTab==2?
                            const ClassesWithStudents()
                                :menuAapProvider.indexTab==3?
                            const Attendance()
                                :menuAapProvider.indexTab==4?
                                const StudentAddForm():
                            const  Dashboard()

                          ],
                        ),
                      ),
                    ]
                ),
    ),
    ]
    ),
    ),
    ),
  );

  },
);
  }
}
