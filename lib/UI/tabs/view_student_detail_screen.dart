import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/delete_button.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';
import 'package:school_manegment_system/UI/widgets/undertaking_row.dart';
import 'package:school_manegment_system/UI/widgets/update_form.dart';
import 'package:school_manegment_system/UI/widgets/view_detail_double_row.dart';
import 'package:school_manegment_system/core/constant/constant_decoration.dart';
import 'package:school_manegment_system/core/providers/printing_provider.dart';
import 'package:school_manegment_system/core/providers/update_student_provider.dart';

import '../../core/constant/constant_text.dart';
import '../../core/models/StudentsModels.dart';
import '../../core/providers/student_provider.dart';
import '../widgets/view_detail_row.dart';




class ViewStudentDetailScreen extends StatelessWidget {
  StudentsModels mdl = StudentsModels();

   ViewStudentDetailScreen({super.key, required this.mdl});

  @override
  Widget build(BuildContext context) {
    DateTime dob = DateTime.fromMillisecondsSinceEpoch(mdl.dob!);
    String dateOfBirth = "${dob.year}-${dob.month}-${dob.day}";
    DateTime doa = DateTime.fromMillisecondsSinceEpoch(mdl.admissionDate!);
    String dateOfAdmission = "${doa.year}-${doa.month}-${doa.day}";

    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Dialog(
      child: Consumer<StudentProvider>(
        builder: (context, studentProvider, child) {
          return Container(
            width: 85 * w,
            height: 90 * h,
            decoration: ConstantDecoration.adminPageLogInContainerDecoration,
            child: Padding(
              padding: EdgeInsets.all(0.5 * w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                     SizedBox(
                      height: 25 * h,
                      width:90*w,
                      child: Image(
                        // height: 25 * h,
                        // width:100*w,
                        image: AssetImage(
                            ''),
                      ),
                    ),
                    SizedBox(
                      height: 3 * h,
                    ),
                    Column(
                      children: [
                        ViewDetailRow(sno: '1', text: 'Name', value: mdl.name!),
                        ViewDetailRow(
                            sno: '2',
                            text: 'Date Of Birth',
                            value: dateOfBirth),
                        ViewDetailDoubleRow(
                          sno: '3',
                          text: 'Section',
                          value: mdl.studentSection!,
                          sno2: '4',
                          text2: 'Sub Section',
                          value2: mdl.studentSubSection!,
                        ),
                        ViewDetailDoubleRow(
                          sno: '5',
                          text: 'Father Name',
                          value: mdl.fatherName!,
                          sno2: '6',
                          text2: 'Father Cnic',
                          value2: mdl.fatherCNIC!.toString(),
                        ),
                        ViewDetailDoubleRow(
                          sno: '7',
                          text: 'Father Occupation',
                          value: mdl.fatherOccupation!,
                          sno2: '8',
                          text2: 'Father Mobile',
                          value2: '0${mdl.fatherMOBILE}',
                        ),
                        ViewDetailRow(
                            sno: '9', text: 'Residence', value: mdl.address!),
                        ViewDetailDoubleRow(
                          sno: '10',
                          text: 'Gender',
                          value: mdl.gender!,
                          sno2: '11',
                          text2: 'Religion',
                          value2: mdl.religion!,
                        ),
                        ViewDetailDoubleRow(
                          sno: '11',
                          text: 'Guardian Name',
                          value: mdl.guardianName!,
                          sno2: '12',
                          text2: 'Student Relation',
                          value2: mdl.guardianRelation!,
                        ),
                        ViewDetailDoubleRow(
                          sno: '13',
                          text: 'Guardian Cnic',
                          value: mdl.guardianCNIC!.toString(),
                          sno2: '14',
                          text2: 'Guardian Mobile',
                          value2: '0${mdl.guardianMobile!.toString()}',
                        ),
                        ViewDetailRow(
                            sno: '15',
                            text: 'Last School',
                            value: mdl.lastSchool!),
                        SizedBox(
                          height: 2 * h,
                        ),
                        Text(
                          ConstantText.admissionForm,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 1.6 * w,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 7 * h,
                        ),
                        const ViewDetailDoubleRow(
                          sno: '16',
                          text: 'Student Sign',
                          value: '',
                          sno2: '17',
                          text2: 'School Sign',
                          value2: '',
                        ),
                        Container(
                          height: 55  * h,
                          width: 81 * w,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: Padding(
                            padding: EdgeInsets.all(.5 * w),
                            child: Column(
                              children: [
                                Container(
                                  height: 10 * h,
                                  width: 30 * w,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(2 * w),
                                      bottomLeft: Radius.circular(2 * w),
                                    ),
                                    gradient: const LinearGradient(
                                        colors: [
                                          Colors.black,
                                          Colors.red,
                                        ],
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'For Office Use Only',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 2.5 * w,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2 * h,
                                ),
                                ViewDetailDoubleRow(
                                  sno: '',
                                  text: 'Admitted Class',
                                  value: mdl.admittedClass!,
                                  sno2: '',
                                  text2: 'Admission Number',
                                  value2: mdl.admissionNumber!.toString(),
                                ),
                                SizedBox(
                                  height: 4.5 * h,
                                ),
                                ViewDetailDoubleRow(
                                  sno: '',
                                  text: 'Admission Fee',
                                  value: mdl.admissionFee!.toString(),
                                  sno2: '',
                                  text2: 'Cashier Sign',
                                  value2: '',
                                ),
                                SizedBox(
                                  height: 3.5 * h,
                                ),
                                 ViewDetailDoubleRow(
                                  sno: '',
                                  text: 'Status',
                                  value: '',
                                  sno2: '',
                                  text2: 'Date',
                                  value2: dateOfAdmission,
                                ),
                                SizedBox(
                                  height: 5 * h,
                                ),
                                const ViewDetailDoubleRow(
                                  sno: '',
                                  text: 'Stamp',
                                  value: '',
                                  sno2: '',
                                  text2: 'Principal Stamp',
                                  value2: '',
                                ),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3 * h,
                        ),
                        Container(
                          height: 95 * h,
                          width: 81 * w,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black)),
                          child: Padding(
                            padding: EdgeInsets.all(.5 * w),
                            child: Column(
                              children: [
                                Container(
                                  height: 10 * h,
                                  width: 30 * w,
                                  decoration: BoxDecoration(
                                    color: Colors.black45,
                                    borderRadius: BorderRadius.circular(2 * w),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Under Taking',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                        fontSize: 2.5 * w,
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 2.5 * h,
                                ),
                                const ViewDetailDoubleRow(
                                  sno: '',
                                  text: 'Name',
                                  value: '',
                                  sno2: '',
                                  text2: 'S/O, D/O',
                                  value2: '',
                                ),
                                SizedBox(
                                  height: 2 * h,
                                ),
                                UnderTakingRow(
                                    sno: '1', text: ConstantText.lineOne),
                                UnderTakingRow(
                                    sno: '2', text: ConstantText.lineTwo),
                                UnderTakingRow(
                                    sno: '3', text: ConstantText.lineThree),
                                UnderTakingRow(
                                    sno: '4', text: ConstantText.lineFour),
                                UnderTakingRow(
                                    sno: '5', text: ConstantText.lineFive),
                                UnderTakingRow(
                                    sno: '6', text: ConstantText.lineSix),
                                SizedBox(
                                  height: 05 * h,
                                ),
                                const ViewDetailDoubleRow(
                                  sno: '',
                                  text: 'Student Sign',
                                  value: '',
                                  sno2: '',
                                  text2: 'Guardian Sign',
                                  value2: '',
                                ),

                                SizedBox(
                                  height: 06 * h,
                                ),

                                const ViewDetailDoubleRow(
                                  sno: '',
                                  text: 'Principal Sign',
                                  value: '',
                                  sno2: '',
                                  text2: 'Principal Stamp',
                                  value2: '',
                                ),



                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 5 * h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Consumer<PrintingProvider>(
                              builder: ( context, printingProvider,child) {
                                return StudentDetailButton(
                                    text: "Print", onPressed: () {
                                      printingProvider.printAdmissionForm(mdl);
                                });
                              },
                            ),

                            StudentDetailButton(
                                text: "Update",
                                onPressed: () {
                                  Provider.of<UpdateStudentProvider>(context,
                                          listen: false)
                                      .oldData(mdl);
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return UpdateForm(
                                          mdl: mdl,
                                        );
                                      });
                                }),
                            DeleteButton(
                                text: "Cancel",
                                onPressed: () {
                                  Navigator.of(context).pop();
                                }),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
