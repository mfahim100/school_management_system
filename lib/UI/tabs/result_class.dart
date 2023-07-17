import 'package:flutter/material.dart';
import 'package:school_manegment_system/UI/widgets/custom_button.dart';
import 'package:school_manegment_system/UI/widgets/fee_structure_textfield.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';
import 'package:school_manegment_system/core/constant/constant_decoration.dart';

import 'dmc.dart';

class ResultClass extends StatelessWidget {
  const ResultClass({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return SizedBox(
      width: 73 * w,
      child: SizedBox(
        height: 80*h,
        width: 80*w,
        child: Padding(
          padding:  EdgeInsets.all(2*w),
          child: Column(
            children: [

              SizedBox(
                height: 70*h,
                width: 60*w,
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context,index){
                      return Container(
                        height: 09*h,
                        decoration: ConstantDecoration.adminPageLogInContainerDecoration,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text("Roll No",style: TextStyle(
                                color: Colors.white
                            ),),
                            const Text("Name Of Student",style: TextStyle(
                                color: Colors.white
                            ),),
                            const Text("Father Name Of Student",style: TextStyle(
                                color: Colors.white
                            ),),

                            SizedBox(
                              width: 10*w,
                                height: 05*h,
                                child: StudentDetailButton(text: 'View Detail', onPressed: (){})),
                            SizedBox(
                              width: 10*w,
                              height: 05*h,
                              child: StudentDetailButton(text: 'Insert Result', onPressed: (){
                                showDialog(
                                  barrierDismissible: false,
                                    context: context, builder: (context){
                                  return const Dmc();
                                });
                              }),
                            ),




                          ],
                        ),
                      );
                    }),
              ),



            ],
          ),
        ),

      ),

    );
  }
}
