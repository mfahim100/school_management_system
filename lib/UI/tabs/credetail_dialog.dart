import 'package:flutter/material.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';
import 'package:school_manegment_system/core/constant/constant_decoration.dart';

class CredentialDialog extends StatelessWidget {
  const CredentialDialog({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height/100;
    double w = size.width/100;
    return Dialog(
      child: Container(
        width: 40*w,
        height: 40*h,
        decoration: ConstantDecoration.adminPageLogInContainerDecoration,
        child: Column(
          children: [
            SizedBox(
              width: 40*w,
              height: 30*h,
              child:  Center(
                child: Text('Invalid Email or Password',style: TextStyle(
                  fontSize: 2*w,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            SizedBox(height: 2*h,),
            StudentDetailButton(text:'OK', onPressed: (){
              Navigator.of(context).pop();
            })
          ],
        ),
      ),
    );
  }
}
