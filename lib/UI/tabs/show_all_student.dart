import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:school_manegment_system/UI/widgets/custom_button.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';
import 'package:school_manegment_system/core/constant/constant_decoration.dart';


class ShowAllStudent extends StatelessWidget {
  const ShowAllStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return SizedBox(
      width: 73 * w,
      height: 80*h,
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                height: 25*h,
                width: 50*w,
               decoration: ConstantDecoration.adminPanelContainer,
                child:   Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('10033GG',style: GoogleFonts.abel(
                          fontSize: 04.5*h,
                          color: Colors.white
                        ),
                        ),
                        Text('Muhammad Fahim',style: GoogleFonts.abel(
                            fontSize: 04.5*h,
                            color: Colors.white
                        ),),
                        Text('Muhammad Ghaffar',style: GoogleFonts.abel(
                            fontSize: 04.5*h,
                            color: Colors.white
                        ),),
                        Text('Zarakhela shamozai swat',style: GoogleFonts.abel(
                            fontSize: 04.5*h,
                            color: Colors.white
                        ),),

                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                       SizedBox(
                           width: 10*w,
                           height: 05*h,
                           child: StudentDetaileButton(text: 'Fee Details', onPressed: (){})),
                       SizedBox(
                           width: 10*w,
                           height: 05*h,
                           child: StudentDetaileButton(text: 'Results', onPressed: (){})),
                       SizedBox(
                           width: 10*w,
                           height: 05*h,
                           child: StudentDetaileButton(text: 'Attendance', onPressed: (){})),


                      ],
                    ),
                  ],
                ),
              ),

              SizedBox(height: h*2,),
            ],
          );
        },

      ),
    );

  }
}
