import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/tabs/view_student_detail_screen.dart';
import 'package:school_manegment_system/UI/widgets/delete_dialogue.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';
import 'package:school_manegment_system/core/constant/constant_decoration.dart';
import 'package:school_manegment_system/core/providers/student_provider.dart';
import '../../core/models/StudentsModels.dart';
import '../widgets/delete_button.dart';

class ShowAllStudent extends StatelessWidget {
  const ShowAllStudent({Key? key}) : super(key: key);

  @override
  @override
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Consumer<StudentProvider>(
      builder: (context, studentProvider, child) {
        return SizedBox(
          width: 73 * w,
          height: 80 * h,
          child: ListView.builder(
            itemCount: studentProvider.getStudentByClassList.length,
            itemBuilder: (BuildContext context, int index) {
              StudentsModels mdl = studentProvider.getStudentByClassList[index];
              return Column(
                children: [
                  Container(
                    height: 25 * h,
                    width: 50 * w,
                    decoration: ConstantDecoration.adminPanelContainer,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(0.5 * h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                mdl.admissionNumber!.toString(),
                                style: GoogleFonts.abel(
                                    fontSize: 04.5 * h, color: Colors.white),
                              ),
                              Text(
                                mdl.name!,
                                style: GoogleFonts.abel(
                                    fontSize: 04.5 * h, color: Colors.white),
                              ),
                              Text(
                                mdl.fatherName!,
                                style: GoogleFonts.abel(
                                    fontSize: 04.5 * h, color: Colors.white),
                              ),
                              Text(
                                mdl.address!,
                                style: GoogleFonts.abel(
                                    fontSize: 04.5 * h, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            StudentDetailButton(
                                text: 'View Details',
                                onPressed: () {
                                  studentProvider.getStudentByClassProvider(mdl.admittedClass!);
                                  showDialog(
                                    barrierDismissible: false,
                                      context: context,
                                      builder: (context) {
                                        return ViewStudentDetailScreen(mdl: mdl);
                                      });
                                }),
                            DeleteButton(
                                text: 'Delete',
                                onPressed: () {
                                  showDialog(
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (context) {
                                        return DeleteDialogue(
                                          sid: mdl.admissionNumber!,
                                          cls: mdl.admittedClass!,
                                        );
                                      });
                                }),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: h * 2,
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
