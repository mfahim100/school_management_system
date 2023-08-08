import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/delete_button.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';
import 'package:school_manegment_system/core/constant/constant_decoration.dart';
import 'package:school_manegment_system/core/providers/student_provider.dart';

class DeleteDialogue extends StatelessWidget {
  final int sid;
  final String cls;
  const DeleteDialogue({super.key, required this.sid, required this.cls});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Dialog(
      child: Consumer<StudentProvider>(builder: (context, studentProvider, child) {
        return Container(
          width: 45*w,
          height: 25*h,
          decoration: ConstantDecoration.adminPanelContainer,
          child: Padding(
            padding:  EdgeInsets.all(1.5*w),
            child: Column(
              children: [
                Text('Are You Want To Delete the Student Data',style: TextStyle(
                    fontSize: 2*w,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                ),),

                SizedBox(height: 7*h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    DeleteButton(text: 'Delete', onPressed: (){
                      studentProvider.deleteStudentBySid(sid);
                      studentProvider.getStudentByClassProvider(cls);
                      Navigator.of(context).pop();
                    }),
                    StudentDetailButton(text: 'Cancel',onPressed: (){
                      Navigator.of(context).pop();
                    },)
                  ],
                )
              ],
            ),
          ),
        );

      },),
    );
  }
}
