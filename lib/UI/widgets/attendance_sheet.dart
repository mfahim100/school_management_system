import 'package:flutter/material.dart';
import 'package:school_manegment_system/core/constant/constant_decoration.dart';

class AttendanceSheet extends StatelessWidget {
  const AttendanceSheet({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return SizedBox(
        height: 70*h,
        width: 70*w,
        child: Container(
          decoration: ConstantDecoration.adminPageLogInContainerDecoration,
          child: SizedBox(
            height:70*h,
              width: 70*w,
            child: ListView.builder(
              itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  return  Container(
                    height: 05*h,
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
                        Container(
                          height: 04*h,
                          width: 04*w,
                          color: Colors.white,
                          child: const Center(child: Text('P')),
                        ),
                        Container(
                          height: 04*h,
                          width: 04*w,
                          color: Colors.white,
                          child: const Center(child: Text('L')),
                        ),
                        Container(
                          height: 04*h,
                          width: 04*w,
                          color: Colors.white,
                          child: const Center(child: Text('A')),
                        ),

                      ],
                    ),
                  );
                },

            ),
          ),
        ),
      );

  }
}
