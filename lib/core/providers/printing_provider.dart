import 'package:flutter/cupertino.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';
import 'package:school_manegment_system/core/models/StudentsModels.dart';
import 'package:school_manegment_system/core/providers/fee_provider.dart';
import 'package:school_manegment_system/core/providers/result_provider.dart';

import '../constant/constant_text.dart';
import '../models/DmcModels.dart';
import '../models/Feemodel.dart';

class PrintingProvider extends ChangeNotifier{


  /////// Admission form printing function//////////////

  Future<void> printAdmissionForm(StudentsModels mdl) async  {

    DateTime dob = DateTime.fromMillisecondsSinceEpoch(mdl.dob!);
    String dateOfBirth = "${dob.year}-${dob.month}-${dob.day}";
    DateTime doa = DateTime.fromMillisecondsSinceEpoch(mdl.admissionDate!);
    String dateOfAdmission = "${doa.year}-${doa.month}-${doa.day}";

    final doc = pw.Document();
    doc.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context) {
          return pw.Container(
              child: pw.Column(
                  children: [
                    pw.Container(
                      height: 60,
                      width: 850,
                      child:  pw.Row(
                          children: [
                            pw.Container(
                              height: 100,
                              width: 110,
                            ),
                            pw.Container(
                              height: 80,
                              width: 220,
                              child: pw.Center(
                                  child: pw.Text(
                                      'FAROOQIA',style:
                                  pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 42,
                                    fontBold: pw.Font.timesBoldItalic(),
                                    fontBoldItalic: pw.Font.timesBoldItalic(),
                                  )
                                  )
                              ),
                            ),
                            pw.Container(
                                height: 100,
                                width: 150,
                                child: pw.Center(
                                    child: pw.Column(
                                        children:[
                                          pw.SizedBox(height: 10),
                                          pw.Text(
                                              'EDUCATION & MODERN',style: pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 11,
                                            fontBold: pw.Font.timesBoldItalic(),
                                            fontBoldItalic: pw.Font.timesBoldItalic(),
                                          )
                                          ),

                                          pw.SizedBox(height: 10),
                                          pw.Text(
                                              'SCIENCE SCHOOL SYSTEM',style: pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 11,
                                            fontBold: pw.Font.timesBoldItalic(),
                                            fontBoldItalic: pw.Font.timesBoldItalic(),
                                          )
                                          )
                                        ]
                                    )
                                )
                            )
                          ]
                      ),
                    ),
                    pw.Container(
                        height: 40,
                        width: 850,
                        color: PdfColors.red,
                        child: pw.Center(
                            child: pw.Text(
                                'Admission Form',style:
                            pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 20,
                              fontBold: pw.Font.timesBoldItalic(),
                              fontBoldItalic: pw.Font.timesBoldItalic(),
                            )
                            )
                        )
                    ),

                    pw.SizedBox(height: 10),

                    pw.Container(
                        height: 310,
                        child: pw.Column(
                            children:[
                              ///Name
                              pw.Row(
                                  children: [
                                    pw.Text(
                                      '1. ',style:
                                    pw.TextStyle(
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                    ),

                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                      child: pw.Container(
                                        width: 120,
                                        child:  pw.Text(
                                          'Name: ',style:
                                        pw.TextStyle(
                                          fontWeight: pw.FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                        ),
                                      ),
                                    ),

                                    pw.Container(
                                        width: 330,
                                        child: pw.Column(
                                            children: [
                                              pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                child: pw.Text(
                                                  mdl.name!,style:
                                                pw.TextStyle(
                                                  fontWeight: pw.FontWeight.bold,
                                                  fontSize: 10,
                                                  fontBold: pw.Font.timesBoldItalic(),
                                                ),
                                                ),
                                              ),

                                              pw.Divider(height: 10)

                                            ]
                                        )
                                    )







                                  ]
                              ),

                              pw.SizedBox(height: 5),

                              ///Date Of Birth
                              pw.Row(
                                  children: [
                                    pw.Text(
                                      '2. ',style:
                                    pw.TextStyle(
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                    ),

                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                      child: pw.Container(
                                        width: 120,
                                        child:  pw.Text(
                                          'Date of Birth: ',style:
                                        pw.TextStyle(
                                          fontWeight: pw.FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                        ),
                                      ),
                                    ),

                                    pw.Container(
                                        width: 330,
                                        child: pw.Column(
                                            children: [
                                              pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                child: pw.Text(
                                                  dateOfBirth,style:
                                                pw.TextStyle(
                                                  fontWeight: pw.FontWeight.bold,
                                                  fontSize: 10,
                                                  fontBold: pw.Font.timesBoldItalic(),
                                                ),
                                                ),
                                              ),

                                              pw.Divider(height: 10)

                                            ]
                                        )
                                    )

                                  ]
                              ),
                              pw.SizedBox(height: 5),

                              /// Section ///  Sub Section
                              pw.Row(
                                  children: [
                                    pw.Row(
                                        children: [
                                          pw.Text(
                                            '3. ',style:
                                          pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                          ),

                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                            child: pw.Container(
                                              width: 80,
                                              child:  pw.Text(
                                                'Section:',style:
                                              pw.TextStyle(
                                                fontWeight: pw.FontWeight.bold,
                                                fontSize: 13,
                                              ),
                                              ),
                                            ),
                                          ),

                                          pw.Container(
                                              width: 127,
                                              child: pw.Column(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                      child: pw.Text(
                                                        mdl.studentSection!,style:
                                                      pw.TextStyle(
                                                        fontWeight: pw.FontWeight.bold,
                                                        fontSize: 10,
                                                        fontBold: pw.Font.timesBoldItalic(),
                                                      ),
                                                      ),
                                                    ),

                                                    pw.Divider(height: 10)

                                                  ]
                                              )
                                          )

                                        ]
                                    ),
                                    pw.Row(
                                        children: [
                                          pw.Text(
                                            '4. ',style:
                                          pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                          ),

                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                            child: pw.Container(
                                              width: 90,
                                              child:  pw.Text(
                                                'Sub Section:',style:
                                              pw.TextStyle(
                                                fontWeight: pw.FontWeight.bold,
                                                fontSize: 13,
                                              ),
                                              ),
                                            ),
                                          ),

                                          pw.Container(
                                              width: 125,
                                              child: pw.Column(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                      child: pw.Text(
                                                        mdl.studentSubSection!,style:
                                                      pw.TextStyle(
                                                        fontWeight: pw.FontWeight.bold,
                                                        fontSize: 10,
                                                        fontBold: pw.Font.timesBoldItalic(),
                                                      ),
                                                      ),
                                                    ),

                                                    pw.Divider(height: 10)

                                                  ]
                                              )
                                          )







                                        ]
                                    )
                                  ]
                              ),
                              pw.SizedBox(height: 5),
                              /// Father Name and CNIC
                              pw.Row(
                                  children: [
                                    pw.Row(
                                        children: [
                                          pw.Text(
                                            '5. ',style:
                                          pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                          ),

                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                            child: pw.Container(
                                              width: 97,
                                              child:  pw.Text(
                                                'Father Name:',style:
                                              pw.TextStyle(
                                                fontWeight: pw.FontWeight.bold,
                                                fontSize: 13,
                                              ),
                                              ),
                                            ),
                                          ),

                                          pw.Container(
                                              width: 112,
                                              child: pw.Column(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                      child: pw.Text(
                                                        mdl.fatherName!,style:
                                                      pw.TextStyle(
                                                        fontWeight: pw.FontWeight.bold,
                                                        fontSize: 10,
                                                        fontBold: pw.Font.timesBoldItalic(),
                                                      ),
                                                      ),
                                                    ),

                                                    pw.Divider(height: 10)

                                                  ]
                                              )
                                          )

                                        ]
                                    ),
                                    pw.Row(
                                        children: [
                                          pw.Text(
                                            '6. ',style:
                                          pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                          ),

                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                            child: pw.Container(
                                              width: 95,
                                              child:  pw.Text(
                                                'Father CNIC:',style:
                                              pw.TextStyle(
                                                fontWeight: pw.FontWeight.bold,
                                                fontSize: 13,
                                              ),
                                              ),
                                            ),
                                          ),

                                          pw.Container(
                                              width: 117,
                                              child: pw.Column(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                      child: pw.Text(
                                                        mdl.fatherCNIC!.toString(),style:
                                                      pw.TextStyle(
                                                        fontWeight: pw.FontWeight.bold,
                                                        fontSize: 10,
                                                        fontBold: pw.Font.timesBoldItalic(),
                                                      ),
                                                      ),
                                                    ),

                                                    pw.Divider(height: 10)

                                                  ]
                                              )
                                          )







                                        ]
                                    )
                                  ]
                              ),
                              pw.SizedBox(height: 5),
                              /// Father Occupation and Mobile
                              pw.Row(
                                  children:  [
                                    pw.Row(
                                        children: [
                                          pw.Text(
                                            '7. ',style:
                                          pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                          ),

                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                            child: pw.Container(
                                              width: 100,
                                              child:  pw.Text(
                                                'Father Mobile:',style:
                                              pw.TextStyle(
                                                fontWeight: pw.FontWeight.bold,
                                                fontSize: 13,
                                              ),
                                              ),
                                            ),
                                          ),

                                          pw.Container(
                                              width: 100,
                                              child: pw.Column(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                      child: pw.Text(
                                                        mdl.fatherMOBILE!.toString(),style:
                                                      pw.TextStyle(
                                                        fontWeight: pw.FontWeight.bold,
                                                        fontSize: 10,
                                                        fontBold: pw.Font.timesBoldItalic(),
                                                      ),
                                                      ),
                                                    ),

                                                    pw.Divider(height: 10)

                                                  ]
                                              )
                                          )


                                        ]
                                    ),

                                    pw.Row(
                                        children: [
                                          pw.Text(
                                            '8. ',style:
                                          pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                          ),

                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                            child: pw.Container(
                                              width: 120,
                                              child:  pw.Text(
                                                'Father Occupation: ',style:
                                              pw.TextStyle(
                                                fontWeight: pw.FontWeight.bold,
                                                fontSize: 13,
                                              ),
                                              ),
                                            ),
                                          ),

                                          pw.Container(
                                              width: 103,
                                              child: pw.Column(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(right: 40),
                                                      child: pw.Text(
                                                       mdl.fatherOccupation!,style:
                                                      pw.TextStyle(
                                                        fontWeight: pw.FontWeight.bold,
                                                        fontSize: 10,
                                                        fontBold: pw.Font.timesBoldItalic(),
                                                      ),
                                                      ),
                                                    ),

                                                    pw.Divider(height: 10)

                                                  ]
                                              )
                                          )

                                        ]
                                    ),

                                  ]
                              ),
                              pw.SizedBox(height: 5),

                              ///Residence
                              pw.Row(
                                  children: [
                                    pw.Text(
                                      '9. ',style:
                                    pw.TextStyle(
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                    ),

                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                      child: pw.Container(
                                        width: 120,
                                        child:  pw.Text(
                                          'Residence: ',style:
                                        pw.TextStyle(
                                          fontWeight: pw.FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                        ),
                                      ),
                                    ),

                                    pw.Container(
                                        width: 330,
                                        child: pw.Column(
                                            children: [
                                              pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                child: pw.Text(
                                                  mdl.address!,style:
                                                pw.TextStyle(
                                                  fontWeight: pw.FontWeight.bold,
                                                  fontSize: 10,
                                                  fontBold: pw.Font.timesBoldItalic(),
                                                ),
                                                ),
                                              ),

                                              pw.Divider(height: 10)

                                            ]
                                        )
                                    )







                                  ]
                              ),
                              pw.SizedBox(height: 5),

                              /// Gender and Religion
                              pw.Row(
                                  children:  [
                                    pw.Row(
                                        children: [
                                          pw.Text(
                                            '10. ',style:
                                          pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                          ),

                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                            child: pw.Container(
                                              width: 80,
                                              child:  pw.Text(
                                                'Gender:',style:
                                              pw.TextStyle(
                                                fontWeight: pw.FontWeight.bold,
                                                fontSize: 13,
                                              ),
                                              ),
                                            ),
                                          ),

                                          pw.Container(
                                              width: 120,
                                              child: pw.Column(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                      child: pw.Text(
                                                        mdl.gender!,style:
                                                      pw.TextStyle(
                                                        fontWeight: pw.FontWeight.bold,
                                                        fontSize: 10,
                                                        fontBold: pw.Font.timesBoldItalic(),
                                                      ),
                                                      ),
                                                    ),

                                                    pw.Divider(height: 10)

                                                  ]
                                              )
                                          )


                                        ]
                                    ),

                                    pw.Row(
                                        children: [
                                          pw.Text(
                                            '11. ',style:
                                          pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                          ),

                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                            child: pw.Container(
                                              width: 80,
                                              child:  pw.Text(
                                                'Religion :',style:
                                              pw.TextStyle(
                                                fontWeight: pw.FontWeight.bold,
                                                fontSize: 13,
                                              ),
                                              ),
                                            ),
                                          ),

                                          pw.Container(
                                              width: 120,
                                              child: pw.Column(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                      child: pw.Text(
                                                        mdl.religion!,style:
                                                      pw.TextStyle(
                                                        fontWeight: pw.FontWeight.bold,
                                                        fontSize: 10,
                                                        fontBold: pw.Font.timesBoldItalic(),
                                                      ),
                                                      ),
                                                    ),

                                                    pw.Divider(height: 10)

                                                  ]
                                              )
                                          )

                                        ]
                                    ),

                                  ]
                              ),
                              pw.SizedBox(height: 5),

                              ///Guardian Name and Relation
                              pw.Row(
                                  children:  [
                                    pw.Row(
                                        children: [
                                          pw.Text(
                                            '12. ',style:
                                          pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                          ),

                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                            child: pw.Container(
                                              width: 110,
                                              child:  pw.Text(
                                                'Guardian Name:',style:
                                              pw.TextStyle(
                                                fontWeight: pw.FontWeight.bold,
                                                fontSize: 13,
                                              ),
                                              ),
                                            ),
                                          ),

                                          pw.Container(
                                              width: 107,
                                              child: pw.Column(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                      child: pw.Text(
                                                        mdl.guardianName!,style:
                                                      pw.TextStyle(
                                                        fontWeight: pw.FontWeight.bold,
                                                        fontSize: 10,
                                                        fontBold: pw.Font.timesBoldItalic(),
                                                      ),
                                                      ),
                                                    ),

                                                    pw.Divider(height: 10)

                                                  ]
                                              )
                                          )


                                        ]
                                    ),

                                    pw.Row(
                                        children: [
                                          pw.Text(
                                            '13. ',style:
                                          pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                          ),

                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                            child: pw.Container(
                                              width: 70,
                                              child:  pw.Text(
                                                'Relation :',style:
                                              pw.TextStyle(
                                                fontWeight: pw.FontWeight.bold,
                                                fontSize: 13,
                                              ),
                                              ),
                                            ),
                                          ),

                                          pw.Container(
                                              width: 112,
                                              child: pw.Column(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                      child: pw.Text(
                                                        mdl.guardianRelation!,style:
                                                      pw.TextStyle(
                                                        fontWeight: pw.FontWeight.bold,
                                                        fontSize: 10,
                                                        fontBold: pw.Font.timesBoldItalic(),
                                                      ),
                                                      ),
                                                    ),

                                                    pw.Divider(height: 10)

                                                  ]
                                              )
                                          )

                                        ]
                                    ),

                                  ]
                              ),
                              pw.SizedBox(height: 5),

                              /// Guardian CNIC and Mobile
                              pw.Row(
                                  children:  [
                                    pw.Row(
                                        children: [
                                          pw.Text(
                                            '14. ',style:
                                          pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                          ),

                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                            child: pw.Container(
                                              width: 100,
                                              child:  pw.Text(
                                                'Guardian CNIC:',style:
                                              pw.TextStyle(
                                                fontWeight: pw.FontWeight.bold,
                                                fontSize: 13,
                                              ),
                                              ),
                                            ),
                                          ),

                                          pw.Container(
                                              width: 107,
                                              child: pw.Column(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                      child: pw.Text(
                                                        mdl.guardianCNIC!.toString(),style:
                                                      pw.TextStyle(
                                                        fontWeight: pw.FontWeight.bold,
                                                        fontSize: 10,
                                                        fontBold: pw.Font.timesBoldItalic(),
                                                      ),
                                                      ),
                                                    ),

                                                    pw.Divider(height: 10)

                                                  ]
                                              )
                                          )


                                        ]
                                    ),

                                    pw.Row(
                                        children: [
                                          pw.Text(
                                            '15. ',style:
                                          pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                          ),

                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                            child: pw.Container(
                                              width: 115,
                                              child:  pw.Text(
                                                'Guardian Mobile:',style:
                                              pw.TextStyle(
                                                fontWeight: pw.FontWeight.bold,
                                                fontSize: 13,
                                              ),
                                              ),
                                            ),
                                          ),

                                          pw.Container(
                                              width: 90,
                                              child: pw.Column(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                      child: pw.Text(
                                                        mdl.guardianMobile!.toString(),style:
                                                      pw.TextStyle(
                                                        fontWeight: pw.FontWeight.bold,
                                                        fontSize: 10,
                                                        fontBold: pw.Font.timesBoldItalic(),
                                                      ),
                                                      ),
                                                    ),

                                                    pw.Divider(height: 10)

                                                  ]
                                              )
                                          )

                                        ]
                                    ),

                                  ]
                              ),
                              pw.SizedBox(height: 5),

                              ///Last Schooolll
                              pw.Row(
                                  children: [
                                    pw.Text(
                                      '16. ',style:
                                    pw.TextStyle(
                                      fontWeight: pw.FontWeight.bold,
                                      fontSize: 15,
                                    ),
                                    ),

                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                      child: pw.Container(
                                        width: 100,
                                        child:  pw.Text(
                                          'Last School: ',style:
                                        pw.TextStyle(
                                          fontWeight: pw.FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                        ),
                                      ),
                                    ),

                                    pw.Container(
                                        width: 330,
                                        child: pw.Column(
                                            children: [
                                              pw.Padding(padding: pw.EdgeInsets.only(right: 180),
                                                child: pw.Text(
                                                  mdl.lastSchool!,style:
                                                pw.TextStyle(
                                                  fontWeight: pw.FontWeight.bold,
                                                  fontSize: 10,
                                                  fontBold: pw.Font.timesBoldItalic(),
                                                ),
                                                ),
                                              ),

                                              pw.Divider(height: 10)

                                            ]
                                        )
                                    )







                                  ]
                              ),

                              pw.SizedBox(height: 15),

                              /// Text

                              pw.Padding(padding: const pw.EdgeInsets.only(left: 20),
                                child:   pw.Text(
                                    ConstantText.admissionForm,style:
                                pw.TextStyle(
                                  fontWeight: pw.FontWeight.bold,
                                  fontSize: 13,
                                )),
                              ),


                              pw.SizedBox(height: 20),

                              /// Sttudent School Sign
                              pw.Row(
                                  children:  [
                                    pw.Row(
                                        children: [
                                          pw.Text(
                                            '17. ',style:
                                          pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                          ),

                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                            child: pw.Container(
                                              width: 90,
                                              child:  pw.Text(
                                                'Student Sign:',style:
                                              pw.TextStyle(
                                                fontWeight: pw.FontWeight.bold,
                                                fontSize: 13,
                                              ),
                                              ),
                                            ),
                                          ),

                                          pw.Container(
                                              width: 107,
                                              child: pw.Column(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                      child: pw.Text(
                                                        '',style:
                                                      pw.TextStyle(
                                                        fontWeight: pw.FontWeight.bold,
                                                        fontSize: 10,
                                                        fontBold: pw.Font.timesBoldItalic(),
                                                      ),
                                                      ),
                                                    ),

                                                    pw.Divider(height: 10)

                                                  ]
                                              )
                                          )


                                        ]
                                    ),

                                    pw.Row(
                                        children: [
                                          pw.Text(
                                            '18. ',style:
                                          pw.TextStyle(
                                            fontWeight: pw.FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                          ),

                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                            child: pw.Container(
                                              width: 100,
                                              child:  pw.Text(
                                                'School Sign :',style:
                                              pw.TextStyle(
                                                fontWeight: pw.FontWeight.bold,
                                                fontSize: 13,
                                              ),
                                              ),
                                            ),
                                          ),

                                          pw.Container(
                                              width: 112,
                                              child: pw.Column(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                      child: pw.Text(
                                                        '',style:
                                                      pw.TextStyle(
                                                        fontWeight: pw.FontWeight.bold,
                                                        fontSize: 10,
                                                        fontBold: pw.Font.timesBoldItalic(),
                                                      ),
                                                      ),
                                                    ),

                                                    pw.Divider(height: 10)

                                                  ]
                                              )
                                          )

                                        ]
                                    ),

                                  ]
                              ),

                            ]
                        )
                    ),


                    pw.Container(
                        height: 220,
                        width: 470,
                        decoration: pw.BoxDecoration(
                            border:  pw.Border.all(
                              color: PdfColors.black,
                            )
                        ),
                        child:pw.Padding(padding: const pw.EdgeInsets.all(05),
                            child: pw.Column(
                                children:[
                                  pw.Container(
                                      height: 20,
                                      width: 120,
                                      decoration: const pw.BoxDecoration(
                                        gradient: pw.LinearGradient(
                                            colors: [
                                              PdfColors.red,
                                              PdfColors.black
                                            ],
                                            begin: pw.Alignment.topCenter,
                                            end: pw.Alignment.bottomCenter),

                                        borderRadius: pw.BorderRadius.only(
                                          bottomLeft: pw.Radius.circular(10),
                                          bottomRight: pw.Radius.circular(10),
                                        ),

                                      ),
                                      child: pw.Center(
                                        child:  pw.Text(
                                          'For Office Use Only',style:
                                        pw.TextStyle(
                                          fontWeight: pw.FontWeight.bold,
                                          fontSize: 10,
                                          fontBold: pw.Font.timesBoldItalic(),
                                        ),
                                        ),
                                      )
                                  ),

                                  pw.SizedBox(height: 10),

                                  /// admitted class admission Number
                                  pw.Row(
                                      children:  [
                                        pw.Row(
                                            children: [

                                              pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                child: pw.Container(
                                                  width: 120,
                                                  child:  pw.Text(
                                                    'Admitted Class: ',style:
                                                  pw.TextStyle(
                                                    fontWeight: pw.FontWeight.bold,
                                                    fontSize: 13,
                                                  ),
                                                  ),
                                                ),
                                              ),

                                              pw.Container(
                                                  width: 107,
                                                  child: pw.Column(
                                                      children: [
                                                        pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                          child: pw.Text(
                                                            mdl.admittedClass!,style:
                                                          pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 10,
                                                            fontBold: pw.Font.timesBoldItalic(),
                                                          ),
                                                          ),
                                                        ),

                                                        pw.Divider(height: 10)

                                                      ]
                                                  )
                                              )


                                            ]
                                        ),

                                        pw.Row(
                                            children: [

                                              pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                child: pw.Container(
                                                  width: 120,
                                                  child:  pw.Text(
                                                    'Admission Number',style:
                                                  pw.TextStyle(
                                                    fontWeight: pw.FontWeight.bold,
                                                    fontSize: 13,
                                                  ),
                                                  ),
                                                ),
                                              ),

                                              pw.SizedBox(width: 10),

                                              pw.Container(
                                                  width: 80,
                                                  child: pw.Column(
                                                      children: [
                                                        pw.Padding(padding: const pw.EdgeInsets.only(right: 60),
                                                          child: pw.Text(
                                                            mdl.admissionNumber!.toString(),style:
                                                          pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 10,
                                                            fontBold: pw.Font.timesBoldItalic(),
                                                          ),
                                                          ),
                                                        ),

                                                        pw.Divider(height: 10)

                                                      ]
                                                  )
                                              )

                                            ]
                                        ),

                                      ]
                                  ),

                                  pw.SizedBox(height: 25),
                                  /// admission fee and cashier sign

                                  pw.Row(
                                      children:  [
                                        pw.Row(
                                            children: [
                                              pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                child: pw.Container(
                                                  width: 120,
                                                  child:  pw.Text(
                                                    'Admission Fee',style:
                                                  pw.TextStyle(
                                                    fontWeight: pw.FontWeight.bold,
                                                    fontSize: 13,
                                                  ),
                                                  ),
                                                ),
                                              ),

                                              pw.Container(
                                                  width: 107,
                                                  child: pw.Column(
                                                      children: [
                                                        pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                          child: pw.Text(
                                                            mdl.admissionFee!.toString(),style:
                                                          pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 10,
                                                            fontBold: pw.Font.timesBoldItalic(),
                                                          ),
                                                          ),
                                                        ),

                                                        pw.Divider(height: 10)

                                                      ]
                                                  )
                                              )


                                            ]
                                        ),

                                        pw.Row(
                                            children: [


                                              pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                child: pw.Container(
                                                  width: 100,
                                                  child:  pw.Text(
                                                    'Cashier Sign :',style:
                                                  pw.TextStyle(
                                                    fontWeight: pw.FontWeight.bold,
                                                    fontSize: 13,
                                                  ),
                                                  ),
                                                ),
                                              ),

                                              pw.Container(
                                                  width: 112,
                                                  child: pw.Column(
                                                      children: [
                                                        pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                          child: pw.Text(
                                                            '',style:
                                                          pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 10,
                                                            fontBold: pw.Font.timesBoldItalic(),
                                                          ),
                                                          ),
                                                        ),

                                                        pw.Divider(height: 10)

                                                      ]
                                                  )
                                              )

                                            ]
                                        ),

                                      ]
                                  ),

                                  pw.SizedBox(height: 25),

                                  ///status and date
                                  pw.Row(
                                      children:  [
                                        pw.Row(
                                            children: [
                                              pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                child: pw.Container(
                                                  width: 80,
                                                  child:  pw.Text(
                                                    'Status:',style:
                                                  pw.TextStyle(
                                                    fontWeight: pw.FontWeight.bold,
                                                    fontSize: 13,
                                                  ),
                                                  ),
                                                ),
                                              ),

                                              pw.Container(
                                                  width: 120,
                                                  child: pw.Column(
                                                      children: [
                                                        pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                          child: pw.Text(
                                                            '',style:
                                                          pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 10,
                                                            fontBold: pw.Font.timesBoldItalic(),
                                                          ),
                                                          ),
                                                        ),

                                                        pw.Divider(height: 10)

                                                      ]
                                                  )
                                              )


                                            ]
                                        ),

                                        pw.Row(
                                            children: [

                                              pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                child: pw.Container(
                                                  width: 80,
                                                  child:  pw.Text(
                                                    'Date: ',style:
                                                  pw.TextStyle(
                                                    fontWeight: pw.FontWeight.bold,
                                                    fontSize: 13,
                                                  ),
                                                  ),
                                                ),
                                              ),

                                              pw.Container(
                                                  width: 120,
                                                  child: pw.Column(
                                                      children: [
                                                        pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                          child: pw.Text(
                                                            dateOfAdmission,style:
                                                          pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 10,
                                                            fontBold: pw.Font.timesBoldItalic(),
                                                          ),
                                                          ),
                                                        ),

                                                        pw.Divider(height: 10)

                                                      ]
                                                  )
                                              )

                                            ]
                                        ),

                                      ]
                                  ),

                                  pw.SizedBox(height: 25),

                                  ///stamps
                                  pw.Row(
                                      children:  [
                                        pw.Row(
                                            children: [
                                              pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                child: pw.Container(
                                                  width: 80,
                                                  child:  pw.Text(
                                                    'Stamp :',style:
                                                  pw.TextStyle(
                                                    fontWeight: pw.FontWeight.bold,
                                                    fontSize: 13,
                                                  ),
                                                  ),
                                                ),
                                              ),

                                              pw.Container(
                                                  width: 120,
                                                  child: pw.Column(
                                                      children: [
                                                        pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                          child: pw.Text(
                                                            '',style:
                                                          pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 10,
                                                            fontBold: pw.Font.timesBoldItalic(),
                                                          ),
                                                          ),
                                                        ),

                                                        pw.Divider(height: 10)

                                                      ]
                                                  )
                                              )


                                            ]
                                        ),
                                        pw.Row(
                                            children: [

                                              pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                child: pw.Container(
                                                  width: 120,
                                                  child:  pw.Text(
                                                    'Principal Stamp',style:
                                                  pw.TextStyle(
                                                    fontWeight: pw.FontWeight.bold,
                                                    fontSize: 13,
                                                  ),
                                                  ),
                                                ),
                                              ),

                                              pw.Container(
                                                  width: 120,
                                                  child: pw.Column(
                                                      children: [
                                                        pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                          child: pw.Text(
                                                            '',style:
                                                          pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 10,
                                                            fontBold: pw.Font.timesBoldItalic(),
                                                          ),
                                                          ),
                                                        ),

                                                        pw.Divider(height: 10)

                                                      ]
                                                  )
                                              )

                                            ]
                                        ),

                                      ]
                                  ),

                                ]
                            ))
                    )

                  ]
              )
          ); // Center
        }));
    doc.addPage(pw.Page(
        pageFormat: PdfPageFormat.a4,
        build: (pw.Context context){
          return pw.Container(
              child: pw.Padding(
                  padding: const pw.EdgeInsets.all(05),
                  child: pw.Column(
                      children: [
                        pw.Container(
                          height: 20,
                          width: 120,
                          decoration: const pw.BoxDecoration(
                            gradient: pw.LinearGradient(
                                colors: [
                                  PdfColors.red,
                                  PdfColors.black
                                ],
                                begin: pw.Alignment.topCenter,
                                end: pw.Alignment.bottomCenter),

                            borderRadius: pw.BorderRadius.only(
                              bottomLeft: pw.Radius.circular(10),
                              bottomRight: pw.Radius.circular(10),
                            ),

                          ),
                          child: pw.Center(
                            child:  pw.Text(
                              'Under Taking',style:
                            pw.TextStyle(
                              fontWeight: pw.FontWeight.bold,
                              fontSize: 10,
                              fontBold: pw.Font.timesBoldItalic(),
                            ),
                            ),
                          ),
                        ),

                        pw.SizedBox(height: 20),

                        pw.Row(
                            children:  [
                              pw.Row(
                                  children: [
                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                      child: pw.Container(
                                        width: 50,
                                        child:  pw.Text(
                                          'Name: ',style:
                                        pw.TextStyle(
                                          fontWeight: pw.FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                        ),
                                      ),
                                    ),

                                    pw.Container(
                                        width: 150,
                                        child: pw.Column(
                                            children: [
                                              pw.Padding(padding: const pw.EdgeInsets.only(right: 100),
                                                child: pw.Text(
                                                  mdl.name!,style:
                                                pw.TextStyle(
                                                  fontWeight: pw.FontWeight.bold,
                                                  fontSize: 10,
                                                  fontBold: pw.Font.timesBoldItalic(),
                                                ),
                                                ),
                                              ),

                                              pw.Divider(height: 10)

                                            ]
                                        )
                                    )


                                  ]
                              ),

                              pw.Row(
                                  children: [
                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                      child: pw.Container(
                                        width: 50,
                                        child:  pw.Text(
                                          'S/D/O: ',style:
                                        pw.TextStyle(
                                          fontWeight: pw.FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                        ),
                                      ),
                                    ),

                                    pw.Container(
                                        width: 150,
                                        child: pw.Column(
                                            children: [
                                              pw.Padding(padding: const pw.EdgeInsets.only(right: 100),
                                                child: pw.Text(
                                                  mdl.fatherName!,style:
                                                pw.TextStyle(
                                                  fontWeight: pw.FontWeight.bold,
                                                  fontSize: 10,
                                                  fontBold: pw.Font.timesBoldItalic(),
                                                ),
                                                ),
                                              ),

                                              pw.Divider(height: 10)

                                            ]
                                        )
                                    )

                                  ]
                              ),

                            ]
                        ),

                        pw.SizedBox(height: 15),

                        pw.Row(
                            children: [
                              pw.Text(
                                '1. ',style:
                              pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 15,
                              ),
                              ),

                              pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                child: pw.Container(
                                  width: 430,
                                  child:  pw.Text(
                                    ConstantText.lineOne,style:
                                  pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 09,
                                  ),
                                  ),
                                ),
                              ),









                            ]
                        ),
                        pw.SizedBox(height: 10),


                        pw.Row(
                            children: [
                              pw.Text(
                                '2. ',style:
                              pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 15,
                              ),
                              ),

                              pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                child: pw.Container(
                                  width: 430,
                                  child:  pw.Text(
                                    ConstantText.lineTwo,style:
                                  pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 09,
                                  ),
                                  ),
                                ),
                              ),









                            ]
                        ),

                        pw.SizedBox(height: 10),
                        pw.Row(
                            children: [
                              pw.Text(
                                '3. ',style:
                              pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 15,
                              ),
                              ),

                              pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                child: pw.Container(
                                  width: 430,
                                  child:  pw.Text(
                                    ConstantText.lineThree,style:
                                  pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 09,
                                  ),
                                  ),
                                ),
                              ),









                            ]
                        ),

                        pw.SizedBox(height: 10),
                        pw.Row(
                            children: [
                              pw.Text(
                                '4. ',style:
                              pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 15,
                              ),
                              ),

                              pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                child: pw.Container(
                                  width: 430,
                                  child:  pw.Text(
                                    ConstantText.lineFour,style:
                                  pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 09,
                                  ),
                                  ),
                                ),
                              ),









                            ]
                        ),

                        pw.SizedBox(height: 10),
                        pw.Row(
                            children: [
                              pw.Text(
                                '5. ',style:
                              pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 15,
                              ),
                              ),

                              pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                child: pw.Container(
                                  width: 430,
                                  child:  pw.Text(
                                    ConstantText.lineFive,style:
                                  pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 09,
                                  ),
                                  ),
                                ),
                              ),









                            ]
                        ),

                        pw.SizedBox(height: 10),
                        pw.Row(
                            children: [
                              pw.Text(
                                '6. ',style:
                              pw.TextStyle(
                                fontWeight: pw.FontWeight.bold,
                                fontSize: 15,
                              ),
                              ),

                              pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                child: pw.Container(
                                  width: 430,
                                  child:  pw.Text(
                                    ConstantText.lineSix,style:
                                  pw.TextStyle(
                                    fontWeight: pw.FontWeight.bold,
                                    fontSize: 09,
                                  ),
                                  ),
                                ),
                              ),









                            ]
                        ),

                        pw.SizedBox(height: 380),

                        /// guardian sign and student sign
                        pw.Row(
                            children:  [
                              pw.Row(
                                  children: [
                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                      child: pw.Container(
                                        width: 120,
                                        child:  pw.Text(
                                          'Student Sign:',style:
                                        pw.TextStyle(
                                          fontWeight: pw.FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                        ),
                                      ),
                                    ),

                                    pw.Container(
                                        width: 120,
                                        child: pw.Column(
                                            children: [
                                              pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                child: pw.Text(
                                                  '',style:
                                                pw.TextStyle(
                                                  fontWeight: pw.FontWeight.bold,
                                                  fontSize: 10,
                                                  fontBold: pw.Font.timesBoldItalic(),
                                                ),
                                                ),
                                              ),

                                              pw.Divider(height: 10)

                                            ]
                                        )
                                    )


                                  ]
                              ),

                              pw.Row(
                                  children: [

                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                      child: pw.Container(
                                        width: 120,
                                        child:  pw.Text(
                                          'Guardian Sign :',style:
                                        pw.TextStyle(
                                          fontWeight: pw.FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                        ),
                                      ),
                                    ),

                                    pw.Container(
                                        width: 120,
                                        child: pw.Column(
                                            children: [
                                              pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                child: pw.Text(
                                                  '',style:
                                                pw.TextStyle(
                                                  fontWeight: pw.FontWeight.bold,
                                                  fontSize: 10,
                                                  fontBold: pw.Font.timesBoldItalic(),
                                                ),
                                                ),
                                              ),

                                              pw.Divider(height: 10)

                                            ]
                                        )
                                    )

                                  ]
                              ),

                            ]
                        ),

                        pw.SizedBox(height: 50),
                        /// Principal Sign Segnature
                        pw.Row(
                            children:  [
                              pw.Row(
                                  children: [

                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                      child: pw.Container(
                                        width: 120,
                                        child:  pw.Text(
                                          'Principal Sign:',style:
                                        pw.TextStyle(
                                          fontWeight: pw.FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                        ),
                                      ),
                                    ),

                                    pw.Container(
                                        width: 120,
                                        child: pw.Column(
                                            children: [
                                              pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                child: pw.Text(
                                                  '',style:
                                                pw.TextStyle(
                                                  fontWeight: pw.FontWeight.bold,
                                                  fontSize: 10,
                                                  fontBold: pw.Font.timesBoldItalic(),
                                                ),
                                                ),
                                              ),

                                              pw.Divider(height: 10)

                                            ]
                                        )
                                    )


                                  ]
                              ),

                              pw.Row(
                                  children: [
                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                      child: pw.Container(
                                        width: 120,
                                        child:  pw.Text(
                                          'Principal Stamp :',style:
                                        pw.TextStyle(
                                          fontWeight: pw.FontWeight.bold,
                                          fontSize: 13,
                                        ),
                                        ),
                                      ),
                                    ),

                                    pw.Container(
                                        width: 120,
                                        child: pw.Column(
                                            children: [
                                              pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                child: pw.Text(
                                                  '',style:
                                                pw.TextStyle(
                                                  fontWeight: pw.FontWeight.bold,
                                                  fontSize: 10,
                                                  fontBold: pw.Font.timesBoldItalic(),
                                                ),
                                                ),
                                              ),

                                              pw.Divider(height: 10)

                                            ]
                                        )
                                    )

                                  ]
                              ),

                            ]
                        ),


                      ]
                  )
              )

          );
        }
    ));

    await Printing.sharePdf(bytes: await doc.save(), filename: 'my-document.pdf');
    // await Printing.layoutPdf(
    //     onLayout: (PdfPageFormat format) async => doc.save());
  }

//////////////////////////////////////////////////////////////////////

//////////// DMC function ///////////////
Future<void> printDmcHighClasses(ResultProvider resultProvider) async {
  final doc = pw.Document();
  doc.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context)  {
        return pw.Container(
            height: 1100,
            child: pw.Column(
                children:[
                  pw.Container(
                    height: 100,
                    child:pw.Row(
                        children: [
                          ///Image Logo Container///
                          pw.Container(
                              width: 100,
                              color: PdfColors.grey
                          ),
                          /// School Name Container

                          pw.Container(
                              width: 377,
                              child: pw.Column(
                                  children: [
                                    pw.SizedBox(height: 15),
                                    /// school Name
                                    pw.SizedBox(
                                      width: 350,
                                      child: pw.Column(
                                          children: [
                                            pw.Text(ConstantText.schoolName,style: pw.TextStyle(
                                              fontSize: 13,
                                              fontWeight: pw.FontWeight.bold,
                                            )),
                                            pw.Divider(height: 5),
                                          ]
                                      ),
                                    ),

                                    ///school Adresss

                                    pw.SizedBox(height: 8),
                                    pw.SizedBox(
                                      width: 175,
                                      child: pw.Column(
                                          children: [
                                            pw.Text(ConstantText.dmcAddress,style: pw.TextStyle(
                                              fontSize: 13,
                                              fontWeight: pw.FontWeight.bold,
                                            )),
                                            pw.Divider(height: 5),
                                          ]
                                      ),
                                    ),

                                    ///Detailed Marks Certificate
                                    pw.SizedBox(height: 8),
                                    pw.SizedBox(
                                      width: 115,
                                      child: pw.Column(
                                          children: [
                                            pw.Text('Details Mark sheet ',style: pw.TextStyle(
                                              fontSize: 13,
                                              fontWeight: pw.FontWeight.bold,
                                            )),
                                            pw.Divider(height: 5),
                                          ]
                                      ),
                                    ),


                                  ]
                              )
                          ),

                        ]
                    ),
                  ),
                  pw.ListView.builder(
                      itemCount: resultProvider.getResultByAdmissionNumberAndNameList.length,
                      itemBuilder: (context, index){
                        int yearDate = DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day).millisecondsSinceEpoch;
                        DateTime dt = DateTime.fromMillisecondsSinceEpoch(yearDate);
                        // String examHeldIn = '${dt.month}/${dt.year}';
                        String examHeldIn = '${dt.month == 1 ? 'January' : dt.month == 2 ? 'February' : dt.month == 3 ? 'March' : dt.month == 4 ? 'April' : dt.month == 5 ? 'May' : dt.month == 6 ? 'June' : dt.month == 7 ? 'July' : dt.month == 8 ? 'August' : dt.month == 9 ? 'September' : dt.month == 10 ? 'October' : dt.month == 11 ? 'November' : 'December'} ${dt.year}';
                        DmcModels mdl = resultProvider
                            .getResultByAdmissionNumberAndNameList[index];
                        return pw.Padding(padding: const pw.EdgeInsets.all(10),
                            child: pw.Container(
                                height: 600,
                                child: pw.Column(
                                    children:[
                                      ///informative Container
                                      pw.Container(
                                          height: 110,
                                          decoration:  pw.BoxDecoration(
                                              borderRadius: pw.BorderRadius.circular(05),
                                              border: pw.Border.all(
                                                  color: PdfColors.black
                                              )
                                          ),
                                          child: pw.Padding(
                                              padding: const pw.EdgeInsets.all(5),
                                              child:pw.Column(
                                                  children: [
                                                    ///// Name Father Name
                                                    pw.Row(
                                                        children: [
                                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                            child: pw.Container(
                                                              width: 110,
                                                              child:  pw.Text(
                                                                'This is Certify That: ',style:
                                                              pw.TextStyle(
                                                                fontWeight: pw.FontWeight.bold,
                                                                fontSize: 11,
                                                              ),
                                                              ),
                                                            ),
                                                          ),

                                                          pw.Container(
                                                              width: 160,
                                                              child: pw.Column(
                                                                  children: [
                                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                                      child: pw.Text(
                                                                        mdl.name!,style:
                                                                      pw.TextStyle(
                                                                        fontWeight: pw.FontWeight.bold,
                                                                        fontSize: 10,
                                                                        fontBold: pw.Font.timesBoldItalic(),
                                                                      ),
                                                                      ),
                                                                    ),

                                                                    pw.Divider(height: 10),

                                                                  ]
                                                              )
                                                          ),

                                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                            child: pw.Container(
                                                              width: 35,
                                                              child:  pw.Text(
                                                                'S/D/O: ',style:
                                                              pw.TextStyle(
                                                                fontWeight: pw.FontWeight.bold,
                                                                fontSize: 11,
                                                              ),
                                                              ),
                                                            ),),

                                                          pw.Container(
                                                              width: 125,
                                                              child: pw.Column(
                                                                  children: [
                                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                                      child: pw.Text(
                                                                        mdl.fatherName!,style:
                                                                      pw.TextStyle(
                                                                        fontWeight: pw.FontWeight.bold,
                                                                        fontSize: 10,
                                                                        fontBold: pw.Font.timesBoldItalic(),
                                                                      ),
                                                                      ),
                                                                    ),

                                                                    pw.Divider(height: 10),

                                                                  ]
                                                              )
                                                          )
                                                        ]
                                                    ),

                                                    //////// Admission Number class

                                                    pw.Row(
                                                        children: [
                                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                            child: pw.Container(
                                                              width: 110,
                                                              child:  pw.Text(
                                                                'Admission Number: ',style:
                                                              pw.TextStyle(
                                                                fontWeight: pw.FontWeight.bold,
                                                                fontSize: 11,
                                                              ),
                                                              ),
                                                            ),
                                                          ),

                                                          pw.Container(
                                                              width: 80,
                                                              child: pw.Column(
                                                                  children: [
                                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 05),
                                                                      child: pw.Text(
                                                                        mdl.admissionNumber!.toString(),style:
                                                                      pw.TextStyle(
                                                                        fontWeight: pw.FontWeight.bold,
                                                                        fontSize: 10,
                                                                        fontBold: pw.Font.timesBoldItalic(),
                                                                      ),
                                                                      ),
                                                                    ),

                                                                    pw.Divider(height: 10),

                                                                  ]
                                                              )
                                                          ),


                                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                            child: pw.Container(
                                                              width: 40,
                                                              child:  pw.Text(
                                                                'Class: ',style:
                                                              pw.TextStyle(
                                                                fontWeight: pw.FontWeight.bold,
                                                                fontSize: 11,
                                                              ),
                                                              ),
                                                            ),
                                                          ),


                                                          pw.Container(
                                                              width: 60,
                                                              child: pw.Column(
                                                                  children: [
                                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 05),
                                                                      child: pw.Text(
                                                                        mdl.admittedClass!,style:
                                                                      pw.TextStyle(
                                                                        fontWeight: pw.FontWeight.bold,
                                                                        fontSize: 10,
                                                                        fontBold: pw.Font.timesBoldItalic(),
                                                                      ),
                                                                      ),
                                                                    ),

                                                                    pw.Divider(height: 10),

                                                                  ]
                                                              )
                                                          ),


                                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 03),
                                                            child: pw.Container(
                                                              width: 110,
                                                              child:  pw.Text(
                                                                'and A Candidate of',style:
                                                              pw.TextStyle(
                                                                fontWeight: pw.FontWeight.bold,
                                                                fontSize: 11,
                                                              ),
                                                              ),
                                                            ),),

                                                        ]
                                                    ),


                                                    //////// School name line number 3rd////
                                                    pw.Row(
                                                        children: [
                                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                            child: pw.Container(
                                                              width: 450,
                                                              child:  pw.Text(
                                                                'FAROOQIA Education of Modern Science School System has Secured the marks ',style:
                                                              pw.TextStyle(
                                                                fontWeight: pw.FontWeight.bold,
                                                                fontSize: 11,
                                                              ),
                                                              ),
                                                            ),
                                                          ),


                                                        ]
                                                    ),

                                                    ///// examination term row
                                                    pw.Row(
                                                        children: [
                                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                            child: pw.Container(
                                                              width: 180,
                                                              child:  pw.Text(
                                                                'shown against each subject in the',style:
                                                              pw.TextStyle(
                                                                fontWeight: pw.FontWeight.bold,
                                                                fontSize: 11,
                                                              ),
                                                              ),
                                                            ),
                                                          ),

                                                          pw.Container(
                                                              width: 50,
                                                              child: pw.Column(
                                                                  children: [
                                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 05),
                                                                      child: pw.Text(
                                                                        mdl.examType!,style:
                                                                      pw.TextStyle(
                                                                        fontWeight: pw.FontWeight.bold,
                                                                        fontSize: 10,
                                                                        fontBold: pw.Font.timesBoldItalic(),
                                                                      ),
                                                                      ),
                                                                    ),

                                                                    pw.Divider(height: 10),

                                                                  ]
                                                              )
                                                          ),

                                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                            child: pw.Container(
                                                              width: 150,
                                                              child:  pw.Text(
                                                                ' Term Examination held in',style:
                                                              pw.TextStyle(
                                                                fontWeight: pw.FontWeight.bold,
                                                                fontSize: 11,
                                                              ),
                                                              ),
                                                            ),),
                                                        ]
                                                    ),

                                                    ///// last row
                                                    pw.Row(
                                                        children: [
                                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                            child: pw.Container(
                                                              width: 180,
                                                              child:  pw.Text(
                                                                examHeldIn,style:
                                                              pw.TextStyle(
                                                                fontWeight: pw.FontWeight.bold,
                                                                fontSize: 11,
                                                              ),
                                                              ),
                                                            ),
                                                          ),

                                                        ]
                                                    ),








                                                  ]
                                              )
                                          )
                                      ),

                                      pw.SizedBox(height: 10),

                                      ///Marks Container
                                      pw.Container(
                                        height: 300,
                                        child: pw.Column(
                                            children: [
                                              pw.Table(
                                                  border: pw.TableBorder.all(
                                                      color: PdfColors.black
                                                  ),
                                                  children: [
                                                    ///
                                                    pw.TableRow(
                                                        children: [
                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw.Center(
                                                                child:  pw.Text('Subject',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw.Center(
                                                                child:  pw.Text('Total Marks',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw.Center(
                                                                child:  pw.Text('Obtained Marks',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),
                                                        ]
                                                    ),
                                                    ///
                                                    pw.TableRow(
                                                        children: [
                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw.Center(
                                                                child:  pw.Text('English',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              height: 27,
                                                              width: 100,
                                                              child: pw.Center(
                                                                child:  pw.Text('75',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              height: 27,
                                                              width: 100,
                                                              child: pw.Center(
                                                                child:  pw.Text(mdl.english.toString(),style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),
                                                        ]
                                                    ),
                                                    ///
                                                    pw.TableRow(
                                                        children: [
                                                          pw.Container(
                                                              height: 27,
                                                              width: 100,
                                                              child: pw.Center(
                                                                child:  pw.Text('Urdu',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              height: 27,
                                                              width: 100,
                                                              child: pw.Center(
                                                                child:  pw.Text('75',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              height: 27,
                                                              width: 100,
                                                              child: pw.Center(
                                                                child:  pw.Text(mdl.urdu.toString(),style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),
                                                        ]
                                                    ),
                                                    ///
                                                    pw.TableRow(
                                                        children: [
                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw.Center(
                                                                child:  pw.Text('Maths',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw.Center(
                                                                child:  pw.Text('75',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw.Center(
                                                                child:  pw.Text(mdl.maths.toString(),style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),
                                                        ]
                                                    ),
                                                    //////////
                                                    pw.TableRow(
                                                        children: [
                                                          pw.Container(
                                                              height: 27,
                                                              width: 100,
                                                              child: pw.Center(
                                                                child:  pw.Text('Islamiat',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw.Center(
                                                                child:  pw.Text('50',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              height: 27,
                                                              width: 100,
                                                              child: pw.Center(
                                                                child:  pw.Text(mdl.islamiat.toString(),style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),
                                                        ]
                                                    ),
                                                    /////////////
                                                    pw.TableRow(
                                                        children: [
                                                          pw.Container(
                                                              height: 27,
                                                              width: 100,
                                                              child: pw.Center(
                                                                child:  pw.Text('Pakistan Study',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw.Center(
                                                                child:  pw.Text('50',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw.Center(
                                                                child:  pw.Text(mdl.pakStudy.toString(),style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),
                                                        ]
                                                    ),
                                                    //////////
                                                    pw.TableRow(
                                                        children: [
                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw.Center(
                                                                child:  pw.Text('Chemistry',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw.Center(
                                                                child:  pw.Text('75',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              height: 27,
                                                              width: 100,
                                                              child: pw.Center(
                                                                child:  pw.Text(mdl.chemistry.toString(),style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),
                                                        ]
                                                    ),
                                                    /////////
                                                    pw.TableRow(
                                                        children: [
                                                          pw.Container(
                                                              height: 27,

                                                              width: 100,
                                                              child: pw.Center(
                                                                child:  pw.Text('Biology',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,

                                                              child: pw.Center(
                                                                child:  pw.Text('75',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              height: 27,

                                                              width: 100,
                                                              child: pw.Center(
                                                                child:  pw.Text(mdl.biology.toString(),style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),
                                                        ]
                                                    ),
                                                    //////
                                                    pw.TableRow(
                                                        children: [
                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,

                                                              child: pw.Center(
                                                                child:  pw.Text('Physics',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,

                                                              child: pw.Center(
                                                                child:  pw.Text('75',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                  height: 27,

                                                                )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,

                                                              child: pw.Center(
                                                                child:  pw.Text(mdl.physics.toString(),style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),
                                                        ]
                                                    )
                                                  ]
                                              ),

                                              pw.SizedBox(height: 10),
                                              pw.Row(
                                                  mainAxisAlignment: pw.MainAxisAlignment.end,
                                                  children: [

                                                    pw.Text('Total Marks : ',style: pw.TextStyle(
                                                      fontWeight: pw.FontWeight.bold,
                                                      fontSize: 12,
                                                    )),
                                                    pw.SizedBox(width: 10),
                                                    pw.Table(
                                                        border: pw.TableBorder.all(
                                                            color: PdfColors.black
                                                        ),
                                                        children: [
                                                          pw.TableRow(
                                                              children: [
                                                                pw.Container(
                                                                    width: 160,
                                                                    height: 27,
                                                                    child: pw.Center(
                                                                      child:  pw.Text('550',style: pw.TextStyle(
                                                                        fontWeight: pw.FontWeight.bold,
                                                                        fontSize: 15,
                                                                      )),
                                                                    )
                                                                ),

                                                                pw.Container(
                                                                    width: 160,
                                                                    height: 27,
                                                                    child: pw.Center(
                                                                      child:  pw.Text('${mdl.totalMarks.toString()}- ${mdl.grade}',style: pw.TextStyle(
                                                                        fontWeight: pw.FontWeight.bold,
                                                                        fontSize: 15,
                                                                      )),
                                                                    )
                                                                ),
                                                              ]
                                                          )
                                                        ]
                                                    )
                                                  ]
                                              ),
                                            ]
                                        ),
                                      ),

                                      pw.SizedBox(height: 80),

                                      pw.Row(
                                          children:  [
                                            pw.Row(
                                                children: [
                                                  pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                    child: pw.Container(
                                                      width: 90,
                                                      child:  pw.Text(
                                                        'Checked By: ',style:
                                                      pw.TextStyle(
                                                        fontWeight: pw.FontWeight.bold,
                                                        fontSize: 13,
                                                      ),
                                                      ),
                                                    ),
                                                  ),

                                                  pw.Container(
                                                      width: 100,
                                                      child: pw.Column(
                                                          children: [
                                                            pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                              child: pw.Text(
                                                                '',style:
                                                              pw.TextStyle(
                                                                fontWeight: pw.FontWeight.bold,
                                                                fontSize: 10,
                                                                fontBold: pw.Font.timesBoldItalic(),
                                                              ),
                                                              ),
                                                            ),

                                                            pw.Divider(height: 10)

                                                          ]
                                                      )
                                                  )


                                                ]
                                            ),

                                            pw.Row(
                                                children: [
                                                  pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                    child: pw.Container(
                                                      width: 150,
                                                      child:  pw.Text(
                                                        'Controller of Examination',style:
                                                      pw.TextStyle(
                                                        fontWeight: pw.FontWeight.bold,
                                                        fontSize: 11,
                                                      ),
                                                      ),
                                                    ),
                                                  ),

                                                  pw.Container(
                                                      width: 120,
                                                      child: pw.Column(
                                                          children: [
                                                            pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                              child: pw.Text(
                                                                '',style:
                                                              pw.TextStyle(
                                                                fontWeight: pw.FontWeight.bold,
                                                                fontSize: 10,
                                                                fontBold: pw.Font.timesBoldItalic(),
                                                              ),
                                                              ),
                                                            ),

                                                            pw.Divider(height: 10)

                                                          ]
                                                      )
                                                  )

                                                ]
                                            ),

                                          ]
                                      )

                                    ]
                                )

                            )
                        );
                      })

                ]
            )
        );
      }));

  await Printing.sharePdf(bytes: await doc.save(), filename: 'my-document.pdf');
}

//////////////////////////\


  ///////Function to Print DMC of Middle and Primary Classes
Future<void> printDmcPrimaryAndMiddleClasses(ResultProvider resultProvider) async {
  final doc = pw.Document();
  doc.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Container(
            height: 1100,
            child: pw.Column(
                children: [
                  pw.Container(
                    height: 100,
                    child: pw.Row(
                        children: [

                          ///Image Logo Container///
                          pw.Container(
                              width: 100,
                              color: PdfColors.grey
                          ),

                          /// School Name Container

                          pw.Container(
                              width: 377,
                              child: pw.Column(
                                  children: [
                                    pw.SizedBox(height: 15),

                                    /// school Name
                                    pw.SizedBox(
                                      width: 350,
                                      child: pw.Column(
                                          children: [
                                            pw.Text(ConstantText.schoolName,
                                                style: pw.TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: pw.FontWeight
                                                      .bold,
                                                )),
                                            pw.Divider(height: 5),
                                          ]
                                      ),
                                    ),

                                    ///school Adresss

                                    pw.SizedBox(height: 8),
                                    pw.SizedBox(
                                      width: 175,
                                      child: pw.Column(
                                          children: [
                                            pw.Text(ConstantText.dmcAddress,
                                                style: pw.TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: pw.FontWeight
                                                      .bold,
                                                )),
                                            pw.Divider(height: 5),
                                          ]
                                      ),
                                    ),

                                    ///Detailed Marks Certificate
                                    pw.SizedBox(height: 8),
                                    pw.SizedBox(
                                      width: 115,
                                      child: pw.Column(
                                          children: [
                                            pw.Text('Details Mark sheet ',
                                                style: pw.TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: pw.FontWeight
                                                      .bold,
                                                )),
                                            pw.Divider(height: 5),
                                          ]
                                      ),
                                    ),


                                  ]
                              )
                          ),

                        ]
                    ),
                  ),
                  pw.ListView.builder(
                      itemCount: resultProvider
                          .getResultByAdmissionNumberAndNameList.length,
                      itemBuilder: (context, index) {
                        int yearDate = DateTime(DateTime
                            .now()
                            .year, DateTime
                            .now()
                            .month, DateTime
                            .now()
                            .day).millisecondsSinceEpoch;
                        DateTime dt = DateTime.fromMillisecondsSinceEpoch(
                            yearDate);
                        // String examHeldIn = '${dt.month}/${dt.year}';
                        String examHeldIn = '${dt.month == 1
                            ? 'January'
                            : dt.month == 2 ? 'February' : dt.month == 3
                            ? 'March'
                            : dt.month == 4 ? 'April' : dt.month == 5
                            ? 'May'
                            : dt.month == 6 ? 'June' : dt.month == 7
                            ? 'July'
                            : dt.month == 8 ? 'August' : dt.month == 9
                            ? 'September'
                            : dt.month == 10 ? 'October' : dt.month == 11
                            ? 'November'
                            : 'December'} ${dt.year}';
                        DmcModels mdl = resultProvider
                            .getResultByAdmissionNumberAndNameList[index];
                        return pw.Padding(
                            padding: const pw.EdgeInsets.all(10),
                            child: pw.Container(
                                height: 600,
                                child: pw.Column(
                                    children: [

                                      ///informative Container
                                      pw.Container(
                                          height: 110,
                                          decoration:  pw.BoxDecoration(
                                              borderRadius: pw.BorderRadius.circular(05),
                                              border: pw.Border.all(
                                                  color: PdfColors.black
                                              )
                                          ),
                                          child: pw.Padding(
                                              padding: const pw.EdgeInsets.all(5),
                                              child:pw.Column(
                                                  children: [
                                                    ///// Name Father Name
                                                    pw.Row(
                                                        children: [
                                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                            child: pw.Container(
                                                              width: 110,
                                                              child:  pw.Text(
                                                                'This is Certify That: ',style:
                                                              pw.TextStyle(
                                                                fontWeight: pw.FontWeight.bold,
                                                                fontSize: 11,
                                                              ),
                                                              ),
                                                            ),
                                                          ),

                                                          pw.Container(
                                                              width: 160,
                                                              child: pw.Column(
                                                                  children: [
                                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                                      child: pw.Text(
                                                                        mdl.name!,style:
                                                                      pw.TextStyle(
                                                                        fontWeight: pw.FontWeight.bold,
                                                                        fontSize: 10,
                                                                        fontBold: pw.Font.timesBoldItalic(),
                                                                      ),
                                                                      ),
                                                                    ),

                                                                    pw.Divider(height: 10),

                                                                  ]
                                                              )
                                                          ),

                                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                            child: pw.Container(
                                                              width: 35,
                                                              child:  pw.Text(
                                                                'S/D/O: ',style:
                                                              pw.TextStyle(
                                                                fontWeight: pw.FontWeight.bold,
                                                                fontSize: 11,
                                                              ),
                                                              ),
                                                            ),),

                                                          pw.Container(
                                                              width: 125,
                                                              child: pw.Column(
                                                                  children: [
                                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                                      child: pw.Text(
                                                                        mdl.fatherName!,style:
                                                                      pw.TextStyle(
                                                                        fontWeight: pw.FontWeight.bold,
                                                                        fontSize: 10,
                                                                        fontBold: pw.Font.timesBoldItalic(),
                                                                      ),
                                                                      ),
                                                                    ),

                                                                    pw.Divider(height: 10),

                                                                  ]
                                                              )
                                                          )
                                                        ]
                                                    ),

                                                    //////// Admission Number class

                                                    pw.Row(
                                                        children: [
                                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                            child: pw.Container(
                                                              width: 110,
                                                              child:  pw.Text(
                                                                'Admission Number: ',style:
                                                              pw.TextStyle(
                                                                fontWeight: pw.FontWeight.bold,
                                                                fontSize: 11,
                                                              ),
                                                              ),
                                                            ),
                                                          ),

                                                          pw.Container(
                                                              width: 80,
                                                              child: pw.Column(
                                                                  children: [
                                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 05),
                                                                      child: pw.Text(
                                                                        mdl.admissionNumber!.toString(),style:
                                                                      pw.TextStyle(
                                                                        fontWeight: pw.FontWeight.bold,
                                                                        fontSize: 10,
                                                                        fontBold: pw.Font.timesBoldItalic(),
                                                                      ),
                                                                      ),
                                                                    ),

                                                                    pw.Divider(height: 10),

                                                                  ]
                                                              )
                                                          ),


                                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                            child: pw.Container(
                                                              width: 40,
                                                              child:  pw.Text(
                                                                'Class: ',style:
                                                              pw.TextStyle(
                                                                fontWeight: pw.FontWeight.bold,
                                                                fontSize: 11,
                                                              ),
                                                              ),
                                                            ),
                                                          ),


                                                          pw.Container(
                                                              width: 60,
                                                              child: pw.Column(
                                                                  children: [
                                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 05),
                                                                      child: pw.Text(
                                                                        mdl.admittedClass!,style:
                                                                      pw.TextStyle(
                                                                        fontWeight: pw.FontWeight.bold,
                                                                        fontSize: 10,
                                                                        fontBold: pw.Font.timesBoldItalic(),
                                                                      ),
                                                                      ),
                                                                    ),

                                                                    pw.Divider(height: 10),

                                                                  ]
                                                              )
                                                          ),


                                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 03),
                                                            child: pw.Container(
                                                              width: 110,
                                                              child:  pw.Text(
                                                                'and A Candidate of',style:
                                                              pw.TextStyle(
                                                                fontWeight: pw.FontWeight.bold,
                                                                fontSize: 11,
                                                              ),
                                                              ),
                                                            ),),

                                                        ]
                                                    ),


                                                    //////// School name line number 3rd////
                                                    pw.Row(
                                                        children: [
                                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                            child: pw.Container(
                                                              width: 450,
                                                              child:  pw.Text(
                                                                'FAROOQIA Education of Modern Science School System has Secured the marks ',style:
                                                              pw.TextStyle(
                                                                fontWeight: pw.FontWeight.bold,
                                                                fontSize: 11,
                                                              ),
                                                              ),
                                                            ),
                                                          ),


                                                        ]
                                                    ),

                                                    ///// examination term row
                                                    pw.Row(
                                                        children: [
                                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                            child: pw.Container(
                                                              width: 180,
                                                              child:  pw.Text(
                                                                'shown against each subject in the',style:
                                                              pw.TextStyle(
                                                                fontWeight: pw.FontWeight.bold,
                                                                fontSize: 11,
                                                              ),
                                                              ),
                                                            ),
                                                          ),

                                                          pw.Container(
                                                              width: 50,
                                                              child: pw.Column(
                                                                  children: [
                                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 05),
                                                                      child: pw.Text(
                                                                        mdl.examType!,style:
                                                                      pw.TextStyle(
                                                                        fontWeight: pw.FontWeight.bold,
                                                                        fontSize: 10,
                                                                        fontBold: pw.Font.timesBoldItalic(),
                                                                      ),
                                                                      ),
                                                                    ),

                                                                    pw.Divider(height: 10),

                                                                  ]
                                                              )
                                                          ),

                                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                            child: pw.Container(
                                                              width: 150,
                                                              child:  pw.Text(
                                                                ' Term Examination held in',style:
                                                              pw.TextStyle(
                                                                fontWeight: pw.FontWeight.bold,
                                                                fontSize: 11,
                                                              ),
                                                              ),
                                                            ),),
                                                        ]
                                                    ),

                                                    ///// last row
                                                    pw.Row(
                                                        children: [
                                                          pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                            child: pw.Container(
                                                              width: 180,
                                                              child:  pw.Text(
                                                                examHeldIn,style:
                                                              pw.TextStyle(
                                                                fontWeight: pw.FontWeight.bold,
                                                                fontSize: 11,
                                                              ),
                                                              ),
                                                            ),
                                                          ),

                                                        ]
                                                    ),








                                                  ]
                                              )
                                          )
                                      ),

                                      pw.SizedBox(height: 10),

                                      ///Marks Container
                                      pw.Container(
                                        height: 300,
                                        child: pw.Column(
                                            children: [
                                              pw.Table(
                                                  border: pw.TableBorder
                                                      .all(
                                                      color: PdfColors.black
                                                  ),
                                                  children: [

                                                    ///
                                                    pw.TableRow(
                                                        children: [
                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    'Subject',
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    'Total Marks',
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    'Obtained Marks',
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),
                                                        ]
                                                    ),

                                                    ///
                                                    pw.TableRow(
                                                        children: [
                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    'English',
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              height: 27,
                                                              width: 100,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    '100',
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              height: 27,
                                                              width: 100,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    mdl
                                                                        .english
                                                                        .toString(),
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),
                                                        ]
                                                    ),

                                                    ///
                                                    pw.TableRow(
                                                        children: [
                                                          pw.Container(
                                                              height: 27,
                                                              width: 100,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    'Urdu',
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              height: 27,
                                                              width: 100,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    '100',
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              height: 27,
                                                              width: 100,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    mdl.urdu
                                                                        .toString(),
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),
                                                        ]
                                                    ),

                                                    ///
                                                    pw.TableRow(
                                                        children: [
                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    'Maths',
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    '100',
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    mdl
                                                                        .maths
                                                                        .toString(),
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),
                                                        ]
                                                    ),
                                                    //////////
                                                    pw.TableRow(
                                                        children: [
                                                          pw.Container(
                                                              height: 27,
                                                              width: 100,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    'Islamiat',
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    '100',
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              height: 27,
                                                              width: 100,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    mdl
                                                                        .islamiat
                                                                        .toString(),
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),
                                                        ]
                                                    ),
                                                    /////////////
                                                    pw.TableRow(
                                                        children: [
                                                          pw.Container(
                                                              height: 27,
                                                              width: 100,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    'Pakistan Study',
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    '100',
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    mdl
                                                                        .pakStudy
                                                                        .toString(),
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),
                                                        ]
                                                    ),
                                                    //////////
                                                    pw.TableRow(
                                                        children: [
                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    'Lughat Arabia',
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    '100',
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              height: 27,
                                                              width: 100,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    mdl
                                                                        .lughatArabia
                                                                        .toString(),
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),
                                                        ]
                                                    ),
                                                    /////////
                                                    pw.TableRow(
                                                        children: [
                                                          pw.Container(
                                                              height: 27,

                                                              width: 100,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    'Nazira',
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 100,
                                                              height: 27,

                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    '100',
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              height: 27,

                                                              width: 100,
                                                              child: pw
                                                                  .Center(
                                                                child: pw
                                                                    .Text(
                                                                    mdl
                                                                        .nazira
                                                                        .toString(),
                                                                    style: pw
                                                                        .TextStyle(
                                                                      fontWeight: pw
                                                                          .FontWeight
                                                                          .bold,
                                                                      fontSize: 15,
                                                                    )),
                                                              )
                                                          ),
                                                        ]
                                                    ),

                                                  ]
                                              ),

                                              pw.SizedBox(height: 10),
                                              pw.Row(
                                                  mainAxisAlignment: pw
                                                      .MainAxisAlignment
                                                      .end,
                                                  children: [

                                                    pw.Text(
                                                        'Total Marks : ',
                                                        style: pw.TextStyle(
                                                          fontWeight: pw
                                                              .FontWeight
                                                              .bold,
                                                          fontSize: 12,
                                                        )),
                                                    pw.SizedBox(width: 10),
                                                    pw.Table(
                                                        border: pw
                                                            .TableBorder
                                                            .all(
                                                            color: PdfColors
                                                                .black
                                                        ),
                                                        children: [
                                                          pw.TableRow(
                                                              children: [
                                                                pw
                                                                    .Container(
                                                                    width: 160,
                                                                    height: 27,
                                                                    child: pw
                                                                        .Center(
                                                                      child: pw
                                                                          .Text(
                                                                          '700',
                                                                          style: pw
                                                                              .TextStyle(
                                                                            fontWeight: pw
                                                                                .FontWeight
                                                                                .bold,
                                                                            fontSize: 15,
                                                                          )),
                                                                    )
                                                                ),

                                                                pw
                                                                    .Container(
                                                                    width: 160,
                                                                    height: 27,
                                                                    child: pw
                                                                        .Center(
                                                                      child: pw
                                                                          .Text(
                                                                          '${mdl
                                                                              .totalMarks
                                                                              .toString()}- ${mdl
                                                                              .grade}',
                                                                          style: pw
                                                                              .TextStyle(
                                                                            fontWeight: pw
                                                                                .FontWeight
                                                                                .bold,
                                                                            fontSize: 15,
                                                                          )),
                                                                    )
                                                                ),
                                                              ]
                                                          )
                                                        ]
                                                    )
                                                  ]
                                              ),
                                            ]
                                        ),
                                      ),

                                      pw.SizedBox(height: 80),

                                      pw.Row(
                                          children: [
                                            pw.Row(
                                                children: [
                                                  pw.Padding(
                                                    padding: const pw
                                                        .EdgeInsets.only(
                                                        left: 10),
                                                    child: pw.Container(
                                                      width: 90,
                                                      child: pw.Text(
                                                        'Checked By: ',
                                                        style:
                                                        pw.TextStyle(
                                                          fontWeight: pw
                                                              .FontWeight
                                                              .bold,
                                                          fontSize: 13,
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                  pw.Container(
                                                      width: 100,
                                                      child: pw.Column(
                                                          children: [
                                                            pw.Padding(
                                                              padding: const pw
                                                                  .EdgeInsets
                                                                  .only(
                                                                  right: 180),
                                                              child: pw
                                                                  .Text(
                                                                '', style:
                                                              pw.TextStyle(
                                                                fontWeight: pw
                                                                    .FontWeight
                                                                    .bold,
                                                                fontSize: 10,
                                                                fontBold: pw
                                                                    .Font
                                                                    .timesBoldItalic(),
                                                              ),
                                                              ),
                                                            ),

                                                            pw.Divider(
                                                                height: 10)

                                                          ]
                                                      )
                                                  )


                                                ]
                                            ),

                                            pw.Row(
                                                children: [
                                                  pw.Padding(
                                                    padding: const pw
                                                        .EdgeInsets.only(
                                                        left: 10),
                                                    child: pw.Container(
                                                      width: 150,
                                                      child: pw.Text(
                                                        'Controller of Examination',
                                                        style:
                                                        pw.TextStyle(
                                                          fontWeight: pw
                                                              .FontWeight
                                                              .bold,
                                                          fontSize: 11,
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                  pw.Container(
                                                      width: 120,
                                                      child: pw.Column(
                                                          children: [
                                                            pw.Padding(
                                                              padding: const pw
                                                                  .EdgeInsets
                                                                  .only(
                                                                  right: 180),
                                                              child: pw
                                                                  .Text(
                                                                '', style:
                                                              pw.TextStyle(
                                                                fontWeight: pw
                                                                    .FontWeight
                                                                    .bold,
                                                                fontSize: 10,
                                                                fontBold: pw
                                                                    .Font
                                                                    .timesBoldItalic(),
                                                              ),
                                                              ),
                                                            ),

                                                            pw.Divider(
                                                                height: 10)

                                                          ]
                                                      )
                                                  )

                                                ]
                                            ),

                                          ]
                                      )

                                    ]
                                )

                            )
                        );
                      })

                ]
            )
        );
      }));

  await Printing.sharePdf(
      bytes: await doc.save(), filename: 'my-document.pdf');
}

//////////]]]]]]]]]//;@@@@@@@@@222222/////////////////////  //////

Future<void> printDmcOfAllClasses(ResultProvider resultProvider) async {
  final doc = pw.Document();
  doc.addPage(
    pw.MultiPage(pageFormat: PdfPageFormat.a4,
        build: (pw.Context context){
          return [
            pw.ListView.builder(
                itemCount: resultProvider.getResultByClass.length,
                itemBuilder: (context, index){
                  int yearDate = DateTime(DateTime.now().year,DateTime.now().month,DateTime.now().day).millisecondsSinceEpoch;
                  DateTime dt = DateTime.fromMillisecondsSinceEpoch(yearDate);
                  String examHeldIn = '${dt.month == 1 ? 'January' : dt.month == 2 ? 'February' : dt.month == 3 ? 'March' : dt.month == 4 ? 'April' : dt.month == 5 ? 'May' : dt.month == 6 ? 'June' : dt.month == 7 ? 'July' : dt.month == 8 ? 'August' : dt.month == 9 ? 'September' : dt.month == 10 ? 'October' : dt.month == 11 ? 'November' : 'December'} ${dt.year}';
                  DmcModels mdl = resultProvider
                      .getResultByClass[index];
                  return mdl.admittedClass == '10th'|| mdl.admittedClass == '9th'?
                  pw.Padding(padding: const pw.EdgeInsets.all(10),
                      child: pw.Container(
                          child: pw.Column(
                              children:[
                                pw.Container(
                                  height: 100,
                                  child:pw.Row(
                                      children: [
                                        ///Image Logo Container///
                                        pw.Container(
                                            width: 100,
                                            color: PdfColors.grey
                                        ),
                                        /// School Name Container

                                        pw.Container(
                                            width: 370,
                                            child: pw.Column(
                                                children: [
                                                  pw.SizedBox(height: 15),
                                                  /// school Name
                                                  pw.SizedBox(
                                                    width: 350,
                                                    child: pw.Column(
                                                        children: [
                                                          pw.Text(ConstantText.schoolName,style: pw.TextStyle(
                                                            fontSize: 13,
                                                            fontWeight: pw.FontWeight.bold,
                                                          )),
                                                          pw.Divider(height: 5),
                                                        ]
                                                    ),
                                                  ),

                                                  ///school Adresss

                                                  pw.SizedBox(height: 8),
                                                  pw.SizedBox(
                                                    width: 175,
                                                    child: pw.Column(
                                                        children: [
                                                          pw.Text(ConstantText.dmcAddress,style: pw.TextStyle(
                                                            fontSize: 13,
                                                            fontWeight: pw.FontWeight.bold,
                                                          )),
                                                          pw.Divider(height: 5),
                                                        ]
                                                    ),
                                                  ),

                                                  ///Detailed Marks Certificate
                                                  pw.SizedBox(height: 8),
                                                  pw.SizedBox(
                                                    width: 115,
                                                    child: pw.Column(
                                                        children: [
                                                          pw.Text('Details Mark sheet',style: pw.TextStyle(
                                                            fontSize: 13,
                                                            fontWeight: pw.FontWeight.bold,
                                                          )),
                                                          pw.Divider(height: 5),
                                                        ]
                                                    ),
                                                  ),


                                                ]
                                            )
                                        ),

                                      ]
                                  ),
                                ),

                                pw.SizedBox(height: 10),


                                ///informative Container
                                pw.Container(
                                    height: 110,
                                    decoration:  pw.BoxDecoration(
                                        borderRadius: pw.BorderRadius.circular(05),
                                        border: pw.Border.all(
                                            color: PdfColors.black
                                        )
                                    ),
                                    child: pw.Padding(
                                        padding: const pw.EdgeInsets.all(5),
                                        child:pw.Column(
                                            children: [
                                              ///// Name Father Name
                                              pw.Row(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                      child: pw.Container(
                                                        width: 110,
                                                        child:  pw.Text(
                                                          'This is Certify That: ',style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 11,
                                                        ),
                                                        ),
                                                      ),
                                                    ),

                                                    pw.Container(
                                                        width: 160,
                                                        child: pw.Column(
                                                            children: [
                                                              pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                                child: pw.Text(
                                                                  mdl.name!,style:
                                                                pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 10,
                                                                  fontBold: pw.Font.timesBoldItalic(),
                                                                ),
                                                                ),
                                                              ),

                                                              pw.Divider(height: 10),

                                                            ]
                                                        )
                                                    ),

                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                      child: pw.Container(
                                                        width: 35,
                                                        child:  pw.Text(
                                                          'S/D/O: ',style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 11,
                                                        ),
                                                        ),
                                                      ),),

                                                    pw.Container(
                                                        width: 125,
                                                        child: pw.Column(
                                                            children: [
                                                              pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                                child: pw.Text(
                                                                  mdl.fatherName!,style:
                                                                pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 10,
                                                                  fontBold: pw.Font.timesBoldItalic(),
                                                                ),
                                                                ),
                                                              ),

                                                              pw.Divider(height: 10),

                                                            ]
                                                        )
                                                    )
                                                  ]
                                              ),

                                              //////// Admission Number class

                                              pw.Row(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                      child: pw.Container(
                                                        width: 110,
                                                        child:  pw.Text(
                                                          'Admission Number: ',style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 11,
                                                        ),
                                                        ),
                                                      ),
                                                    ),

                                                    pw.Container(
                                                        width: 80,
                                                        child: pw.Column(
                                                            children: [
                                                              pw.Padding(padding: const pw.EdgeInsets.only(left: 05),
                                                                child: pw.Text(
                                                                  mdl.admissionNumber!.toString(),style:
                                                                pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 10,
                                                                  fontBold: pw.Font.timesBoldItalic(),
                                                                ),
                                                                ),
                                                              ),

                                                              pw.Divider(height: 10),

                                                            ]
                                                        )
                                                    ),


                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                      child: pw.Container(
                                                        width: 40,
                                                        child:  pw.Text(
                                                          'Class: ',style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 11,
                                                        ),
                                                        ),
                                                      ),
                                                    ),


                                                    pw.Container(
                                                        width: 60,
                                                        child: pw.Column(
                                                            children: [
                                                              pw.Padding(padding: const pw.EdgeInsets.only(left: 05),
                                                                child: pw.Text(
                                                                  mdl.admittedClass!,style:
                                                                pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 10,
                                                                  fontBold: pw.Font.timesBoldItalic(),
                                                                ),
                                                                ),
                                                              ),

                                                              pw.Divider(height: 10),

                                                            ]
                                                        )
                                                    ),


                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 03),
                                                      child: pw.Container(
                                                        width: 110,
                                                        child:  pw.Text(
                                                          'and A Candidate of',style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 11,
                                                        ),
                                                        ),
                                                      ),),

                                                  ]
                                              ),


                                              //////// School name line number 3rd////
                                              pw.Row(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                      child: pw.Container(
                                                        width: 450,
                                                        child:  pw.Text(
                                                          'FAROOQIA Education of Modern Science School System has Secured the marks ',style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 11,
                                                        ),
                                                        ),
                                                      ),
                                                    ),


                                                  ]
                                              ),

                                              ///// examination term row
                                              pw.Row(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                      child: pw.Container(
                                                        width: 180,
                                                        child:  pw.Text(
                                                          'shown against each subject in the',style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 11,
                                                        ),
                                                        ),
                                                      ),
                                                    ),

                                                    pw.Container(
                                                        width: 50,
                                                        child: pw.Column(
                                                            children: [
                                                              pw.Padding(padding: const pw.EdgeInsets.only(left: 05),
                                                                child: pw.Text(
                                                                  mdl.examType!,style:
                                                                pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 10,
                                                                  fontBold: pw.Font.timesBoldItalic(),
                                                                ),
                                                                ),
                                                              ),

                                                              pw.Divider(height: 10),

                                                            ]
                                                        )
                                                    ),

                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                      child: pw.Container(
                                                        width: 150,
                                                        child:  pw.Text(
                                                          ' Term Examination held in',style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 11,
                                                        ),
                                                        ),
                                                      ),),
                                                  ]
                                              ),

                                              ///// last row
                                              pw.Row(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                      child: pw.Container(
                                                        width: 180,
                                                        child:  pw.Text(
                                                          examHeldIn,style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 11,
                                                        ),
                                                        ),
                                                      ),
                                                    ),

                                                  ]
                                              ),








                                            ]
                                        )
                                    )
                                ),

                                pw.SizedBox(height: 10),

                                ///Marks Container
                                pw.Container(
                                  height: 300,
                                  child: pw.Column(
                                      children: [
                                        pw.Table(
                                            border: pw.TableBorder.all(
                                                color: PdfColors.black
                                            ),
                                            children: [
                                              ///
                                              pw.TableRow(
                                                  children: [
                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text('Subject',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text('Total Marks',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text('Obtained Marks',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),
                                                  ]
                                              ),
                                              ///
                                              pw.TableRow(
                                                  children: [
                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text('English',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        height: 27,
                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text('75',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        height: 27,
                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text(mdl.english.toString(),style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),
                                                  ]
                                              ),
                                              ///
                                              pw.TableRow(
                                                  children: [
                                                    pw.Container(
                                                        height: 27,
                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text('Urdu',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        height: 27,
                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text('75',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        height: 27,
                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text(mdl.urdu.toString(),style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),
                                                  ]
                                              ),
                                              ///
                                              pw.TableRow(
                                                  children: [
                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text('Maths',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text('75',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text(mdl.maths.toString(),style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),
                                                  ]
                                              ),
                                              //////////
                                              pw.TableRow(
                                                  children: [
                                                    pw.Container(
                                                        height: 27,
                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text('Islamiat',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text('50',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        height: 27,
                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text(mdl.islamiat.toString(),style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),
                                                  ]
                                              ),
                                              /////////////
                                              pw.TableRow(
                                                  children: [
                                                    pw.Container(
                                                        height: 27,
                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text('Pakistan Study',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text('50',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text(mdl.pakStudy.toString(),style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),
                                                  ]
                                              ),
                                              //////////
                                              pw.TableRow(
                                                  children: [
                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text('Chemistry',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text('75',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        height: 27,
                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text(mdl.chemistry.toString(),style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),
                                                  ]
                                              ),
                                              /////////
                                              pw.TableRow(
                                                  children: [
                                                    pw.Container(
                                                        height: 27,

                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text('Biology',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,

                                                        child: pw.Center(
                                                          child:  pw.Text('75',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        height: 27,

                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text(mdl.biology.toString(),style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),
                                                  ]
                                              ),
                                              //////
                                              pw.TableRow(
                                                  children: [
                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,

                                                        child: pw.Center(
                                                          child:  pw.Text('Physics',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,

                                                        child: pw.Center(
                                                          child:  pw.Text('75',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                            height: 27,

                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,

                                                        child: pw.Center(
                                                          child:  pw.Text(mdl.physics.toString(),style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),
                                                  ]
                                              )
                                            ]
                                        ),

                                        pw.SizedBox(height: 10),
                                        pw.Row(
                                            mainAxisAlignment: pw.MainAxisAlignment.end,
                                            children: [

                                              pw.Text('Total Marks : ',style: pw.TextStyle(
                                                fontWeight: pw.FontWeight.bold,
                                                fontSize: 12,
                                              )),
                                              pw.SizedBox(width: 10),
                                              pw.Table(
                                                  border: pw.TableBorder.all(
                                                      color: PdfColors.black
                                                  ),
                                                  children: [
                                                    pw.TableRow(
                                                        children: [
                                                          pw.Container(
                                                              width: 160,
                                                              height: 27,
                                                              child: pw.Center(
                                                                child:  pw.Text('550',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 160,
                                                              height: 27,
                                                              child: pw.Center(
                                                                child:  pw.Text('${mdl.totalMarks.toString()}- ${mdl.grade}',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),
                                                        ]
                                                    )
                                                  ]
                                              )
                                            ]
                                        ),
                                      ]
                                  ),
                                ),

                                pw.SizedBox(height: 80),

                                pw.Row(
                                    children:  [
                                      pw.Row(
                                          children: [
                                            pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                              child: pw.Container(
                                                width: 90,
                                                child:  pw.Text(
                                                  'Checked By: ',style:
                                                pw.TextStyle(
                                                  fontWeight: pw.FontWeight.bold,
                                                  fontSize: 13,
                                                ),
                                                ),
                                              ),
                                            ),

                                            pw.Container(
                                                width: 100,
                                                child: pw.Column(
                                                    children: [
                                                      pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                        child: pw.Text(
                                                          '',style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 10,
                                                          fontBold: pw.Font.timesBoldItalic(),
                                                        ),
                                                        ),
                                                      ),

                                                      pw.Divider(height: 10)

                                                    ]
                                                )
                                            )


                                          ]
                                      ),

                                      pw.Row(
                                          children: [
                                            pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                              child: pw.Container(
                                                width: 150,
                                                child:  pw.Text(
                                                  'Controller of Examination',style:
                                                pw.TextStyle(
                                                  fontWeight: pw.FontWeight.bold,
                                                  fontSize: 11,
                                                ),
                                                ),
                                              ),
                                            ),

                                            pw.Container(
                                                width: 120,
                                                child: pw.Column(
                                                    children: [
                                                      pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                        child: pw.Text(
                                                          '',style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 10,
                                                          fontBold: pw.Font.timesBoldItalic(),
                                                        ),
                                                        ),
                                                      ),

                                                      pw.Divider(height: 10)

                                                    ]
                                                )
                                            )

                                          ]
                                      ),

                                    ]
                                )

                              ]
                          )
                      )
                  )
                      :
                  pw.Padding(padding: const pw.EdgeInsets.all(10),
                      child: pw.Container(
                          child: pw.Column(
                              children:[
                                pw.Container(
                                  height: 100,
                                  child:pw.Row(
                                      children: [
                                        ///Image Logo Container///
                                        pw.Container(
                                            width: 100,
                                            color: PdfColors.grey
                                        ),
                                        /// School Name Container

                                        pw.Container(
                                            width: 370,
                                            child: pw.Column(
                                                children: [
                                                  pw.SizedBox(height: 15),
                                                  /// school Name
                                                  pw.SizedBox(
                                                    width: 350,
                                                    child: pw.Column(
                                                        children: [
                                                          pw.Text(ConstantText.schoolName,style: pw.TextStyle(
                                                            fontSize: 13,
                                                            fontWeight: pw.FontWeight.bold,
                                                          )),
                                                          pw.Divider(height: 5),
                                                        ]
                                                    ),
                                                  ),

                                                  ///school Adresss

                                                  pw.SizedBox(height: 8),
                                                  pw.SizedBox(
                                                    width: 175,
                                                    child: pw.Column(
                                                        children: [
                                                          pw.Text(ConstantText.dmcAddress,style: pw.TextStyle(
                                                            fontSize: 13,
                                                            fontWeight: pw.FontWeight.bold,
                                                          )),
                                                          pw.Divider(height: 5),
                                                        ]
                                                    ),
                                                  ),

                                                  ///Detailed Marks Certificate
                                                  pw.SizedBox(height: 8),
                                                  pw.SizedBox(
                                                    width: 115,
                                                    child: pw.Column(
                                                        children: [
                                                          pw.Text('Details Mark sheet',style: pw.TextStyle(
                                                            fontSize: 13,
                                                            fontWeight: pw.FontWeight.bold,
                                                          )),
                                                          pw.Divider(height: 5),
                                                        ]
                                                    ),
                                                  ),


                                                ]
                                            )
                                        ),

                                      ]
                                  ),
                                ),

                                pw.SizedBox(height: 10),

                                ///informative Container
                                pw.Container(
                                    height: 110,
                                    decoration:  pw.BoxDecoration(
                                        borderRadius: pw.BorderRadius.circular(05),
                                        border: pw.Border.all(
                                            color: PdfColors.black
                                        )
                                    ),
                                    child: pw.Padding(
                                        padding: const pw.EdgeInsets.all(5),
                                        child:pw.Column(
                                            children: [
                                              ///// Name Father Name
                                              pw.Row(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                      child: pw.Container(
                                                        width: 110,
                                                        child:  pw.Text(
                                                          'This is Certify That: ',style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 11,
                                                        ),
                                                        ),
                                                      ),
                                                    ),

                                                    pw.Container(
                                                        width: 160,
                                                        child: pw.Column(
                                                            children: [
                                                              pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                                child: pw.Text(
                                                                  mdl.name!,style:
                                                                pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 10,
                                                                  fontBold: pw.Font.timesBoldItalic(),
                                                                ),
                                                                ),
                                                              ),

                                                              pw.Divider(height: 10),

                                                            ]
                                                        )
                                                    ),

                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                      child: pw.Container(
                                                        width: 35,
                                                        child:  pw.Text(
                                                          'S/D/O: ',style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 11,
                                                        ),
                                                        ),
                                                      ),),

                                                    pw.Container(
                                                        width: 125,
                                                        child: pw.Column(
                                                            children: [
                                                              pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                                child: pw.Text(
                                                                  mdl.fatherName!,style:
                                                                pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 10,
                                                                  fontBold: pw.Font.timesBoldItalic(),
                                                                ),
                                                                ),
                                                              ),

                                                              pw.Divider(height: 10),

                                                            ]
                                                        )
                                                    )
                                                  ]
                                              ),

                                              //////// Admission Number class

                                              pw.Row(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                      child: pw.Container(
                                                        width: 110,
                                                        child:  pw.Text(
                                                          'Admission Number: ',style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 11,
                                                        ),
                                                        ),
                                                      ),
                                                    ),

                                                    pw.Container(
                                                        width: 80,
                                                        child: pw.Column(
                                                            children: [
                                                              pw.Padding(padding: const pw.EdgeInsets.only(left: 05),
                                                                child: pw.Text(
                                                                  mdl.admissionNumber!.toString(),style:
                                                                pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 10,
                                                                  fontBold: pw.Font.timesBoldItalic(),
                                                                ),
                                                                ),
                                                              ),

                                                              pw.Divider(height: 10),

                                                            ]
                                                        )
                                                    ),


                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                      child: pw.Container(
                                                        width: 40,
                                                        child:  pw.Text(
                                                          'Class: ',style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 11,
                                                        ),
                                                        ),
                                                      ),
                                                    ),


                                                    pw.Container(
                                                        width: 60,
                                                        child: pw.Column(
                                                            children: [
                                                              pw.Padding(padding: const pw.EdgeInsets.only(left: 05),
                                                                child: pw.Text(
                                                                  mdl.admittedClass!,style:
                                                                pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 10,
                                                                  fontBold: pw.Font.timesBoldItalic(),
                                                                ),
                                                                ),
                                                              ),

                                                              pw.Divider(height: 10),

                                                            ]
                                                        )
                                                    ),


                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 03),
                                                      child: pw.Container(
                                                        width: 110,
                                                        child:  pw.Text(
                                                          'and A Candidate of',style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 11,
                                                        ),
                                                        ),
                                                      ),),

                                                  ]
                                              ),


                                              //////// School name line number 3rd////
                                              pw.Row(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                      child: pw.Container(
                                                        width: 450,
                                                        child:  pw.Text(
                                                          'FAROOQIA Education of Modern Science School System has Secured the marks ',style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 11,
                                                        ),
                                                        ),
                                                      ),
                                                    ),


                                                  ]
                                              ),

                                              ///// examination term row
                                              pw.Row(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                      child: pw.Container(
                                                        width: 180,
                                                        child:  pw.Text(
                                                          'shown against each subject in the',style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 11,
                                                        ),
                                                        ),
                                                      ),
                                                    ),

                                                    pw.Container(
                                                        width: 50,
                                                        child: pw.Column(
                                                            children: [
                                                              pw.Padding(padding: const pw.EdgeInsets.only(left: 05),
                                                                child: pw.Text(
                                                                  mdl.examType!,style:
                                                                pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 10,
                                                                  fontBold: pw.Font.timesBoldItalic(),
                                                                ),
                                                                ),
                                                              ),

                                                              pw.Divider(height: 10),

                                                            ]
                                                        )
                                                    ),

                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                      child: pw.Container(
                                                        width: 150,
                                                        child:  pw.Text(
                                                          ' Term Examination held in',style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 11,
                                                        ),
                                                        ),
                                                      ),),
                                                  ]
                                              ),

                                              ///// last row
                                              pw.Row(
                                                  children: [
                                                    pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                                      child: pw.Container(
                                                        width: 180,
                                                        child:  pw.Text(
                                                          examHeldIn,style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 11,
                                                        ),
                                                        ),
                                                      ),
                                                    ),

                                                  ]
                                              ),








                                            ]
                                        )
                                    )
                                ),

                                pw.SizedBox(height: 10),

                                ///Marks Container
                                pw.Container(
                                  height: 300,
                                  child: pw.Column(
                                      children: [
                                        pw.Table(
                                            border: pw.TableBorder.all(
                                                color: PdfColors.black
                                            ),
                                            children: [
                                              ///
                                              pw.TableRow(
                                                  children: [
                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text('Subject',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text('Total Marks',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text('Obtained Marks',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),
                                                  ]
                                              ),
                                              ///
                                              pw.TableRow(
                                                  children: [
                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text('English',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        height: 27,
                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text('100',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        height: 27,
                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text(mdl.english.toString(),style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),
                                                  ]
                                              ),
                                              ///
                                              pw.TableRow(
                                                  children: [
                                                    pw.Container(
                                                        height: 27,
                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text('Urdu',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        height: 27,
                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text('100',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        height: 27,
                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text(mdl.urdu.toString(),style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),
                                                  ]
                                              ),
                                              ///
                                              pw.TableRow(
                                                  children: [
                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text('Maths',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text('100',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text(mdl.maths.toString(),style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),
                                                  ]
                                              ),
                                              //////////
                                              pw.TableRow(
                                                  children: [
                                                    pw.Container(
                                                        height: 27,
                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text('Islamiat',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text('100',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        height: 27,
                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text(mdl.islamiat.toString(),style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),
                                                  ]
                                              ),
                                              /////////////
                                              pw.TableRow(
                                                  children: [
                                                    pw.Container(
                                                        height: 27,
                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text('Malumaat Umma',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text('100',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text(mdl.pakStudy.toString(),style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),
                                                  ]
                                              ),
                                              //////////
                                              pw.TableRow(
                                                  children: [
                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text('Lughat Arabia',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,
                                                        child: pw.Center(
                                                          child:  pw.Text('100',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        height: 27,
                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text(mdl.lughatArabia.toString(),style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),
                                                  ]
                                              ),
                                              /////////
                                              pw.TableRow(
                                                  children: [
                                                    pw.Container(
                                                        height: 27,

                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text('Nazira',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        width: 100,
                                                        height: 27,

                                                        child: pw.Center(
                                                          child:  pw.Text('100',style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),

                                                    pw.Container(
                                                        height: 27,

                                                        width: 100,
                                                        child: pw.Center(
                                                          child:  pw.Text(mdl.nazira.toString(),style: pw.TextStyle(
                                                            fontWeight: pw.FontWeight.bold,
                                                            fontSize: 15,
                                                          )),
                                                        )
                                                    ),
                                                  ]
                                              ),

                                            ]
                                        ),

                                        pw.SizedBox(height: 10),
                                        pw.Row(
                                            mainAxisAlignment: pw.MainAxisAlignment.end,
                                            children: [

                                              pw.Text('Total Marks : ',style: pw.TextStyle(
                                                fontWeight: pw.FontWeight.bold,
                                                fontSize: 12,
                                              )),
                                              pw.SizedBox(width: 10),
                                              pw.Table(
                                                  border: pw.TableBorder.all(
                                                      color: PdfColors.black
                                                  ),
                                                  children: [
                                                    pw.TableRow(
                                                        children: [
                                                          pw.Container(
                                                              width: 160,
                                                              height: 27,
                                                              child: pw.Center(
                                                                child:  pw.Text('700',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),

                                                          pw.Container(
                                                              width: 160,
                                                              height: 27,
                                                              child: pw.Center(
                                                                child:  pw.Text('${mdl.totalMarks.toString()}- ${mdl.grade}',style: pw.TextStyle(
                                                                  fontWeight: pw.FontWeight.bold,
                                                                  fontSize: 15,
                                                                )),
                                                              )
                                                          ),
                                                        ]
                                                    )
                                                  ]
                                              )
                                            ]
                                        ),
                                      ]
                                  ),
                                ),

                                pw.SizedBox(height: 80),

                                pw.Row(
                                    children:  [
                                      pw.Row(
                                          children: [
                                            pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                              child: pw.Container(
                                                width: 90,
                                                child:  pw.Text(
                                                  'Checked By: ',style:
                                                pw.TextStyle(
                                                  fontWeight: pw.FontWeight.bold,
                                                  fontSize: 13,
                                                ),
                                                ),
                                              ),
                                            ),

                                            pw.Container(
                                                width: 100,
                                                child: pw.Column(
                                                    children: [
                                                      pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                        child: pw.Text(
                                                          '',style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 10,
                                                          fontBold: pw.Font.timesBoldItalic(),
                                                        ),
                                                        ),
                                                      ),

                                                      pw.Divider(height: 10)

                                                    ]
                                                )
                                            )


                                          ]
                                      ),

                                      pw.Row(
                                          children: [
                                            pw.Padding(padding: const pw.EdgeInsets.only(left: 10),
                                              child: pw.Container(
                                                width: 150,
                                                child:  pw.Text(
                                                  'Controller of Examination',style:
                                                pw.TextStyle(
                                                  fontWeight: pw.FontWeight.bold,
                                                  fontSize: 11,
                                                ),
                                                ),
                                              ),
                                            ),

                                            pw.Container(
                                                width: 120,
                                                child: pw.Column(
                                                    children: [
                                                      pw.Padding(padding: const pw.EdgeInsets.only(right: 180),
                                                        child: pw.Text(
                                                          '',style:
                                                        pw.TextStyle(
                                                          fontWeight: pw.FontWeight.bold,
                                                          fontSize: 10,
                                                          fontBold: pw.Font.timesBoldItalic(),
                                                        ),
                                                        ),
                                                      ),

                                                      pw.Divider(height: 10)

                                                    ]
                                                )
                                            )

                                          ]
                                      ),

                                    ]
                                )

                              ]
                          )
                      )
                  );

                }),
          ];

        }),
  );



  await Printing.sharePdf(bytes: await doc.save(), filename: 'my-document.pdf');
}

/////??????????????????????????????????????????????????????????/


////////// Printing Function of fee slip/////

Future<void> printFeeSlip(FeeProvider feeProvider, StudentsModels mdl) async {
  final doc = pw.Document();
  doc.addPage(pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context){
        return pw.Container(
            height: 1100,
            child: pw.Column(
                children: [
                  pw.Container(
                    height: 100,
                    child: pw.Row(
                        children: [

                          ///Image Logo Container///
                          pw.Container(
                              width: 100,
                              color: PdfColors.grey
                          ),

                          /// School Name Container

                          pw.Container(
                              width: 377,
                              child: pw.Column(
                                  children: [
                                    pw.SizedBox(height: 15),

                                    /// school Name
                                    pw.SizedBox(
                                      width: 350,
                                      child: pw.Column(
                                          children: [
                                            pw.Text(ConstantText.schoolName,
                                                style: pw.TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: pw.FontWeight
                                                      .bold,
                                                )),
                                            pw.Divider(height: 5),
                                          ]
                                      ),
                                    ),

                                    ///school Adresss

                                    pw.SizedBox(height: 8),
                                    pw.SizedBox(
                                      width: 175,
                                      child: pw.Column(
                                          children: [
                                            pw.Text(ConstantText.dmcAddress,
                                                style: pw.TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: pw.FontWeight
                                                      .bold,
                                                )),
                                            pw.Divider(height: 5),
                                          ]
                                      ),
                                    ),

                                    ///Detailed Marks Certificate
                                    pw.SizedBox(height: 8),
                                    pw.SizedBox(
                                      width: 115,
                                      child: pw.Column(
                                          children: [
                                            pw.Text('Details Mark sheet ',
                                                style: pw.TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: pw.FontWeight
                                                      .bold,
                                                )),
                                            pw.Divider(height: 5),
                                          ]
                                      ),
                                    ),


                                  ]
                              )
                          ),

                        ]
                    ),
                  ),

                  pw.SizedBox(height: 10),

                  ///// Informative Container
                  pw.Container(
                      height: 70,
                      width: 500,
                      decoration: pw.BoxDecoration(
                          border: pw.Border.all(
                              color: PdfColors.black
                          ),
                          borderRadius: pw.BorderRadius.circular(05)
                      ),
                      child: pw.Column(
                          children: [
                            //// Name And Father Name
                            pw.Padding(padding: const pw.EdgeInsets.all(05),
                              child: pw.Row(
                                  children: [
                                    pw.Container(
                                        width: 220,
                                        height: 25,
                                        child: pw.Center(
                                          child: pw.Text('Name: ${mdl.name}',
                                              style: pw.TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: pw.FontWeight.bold
                                              )),
                                        )
                                    ),

                                    pw.Container(
                                        width: 250,
                                        height: 25,
                                        child: pw.Center(
                                          child: pw.Text('Father Name: ${mdl.fatherName}',
                                              style: pw.TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: pw.FontWeight.bold
                                              )),
                                        )
                                    ),


                                  ]
                              ),
                            ),

                            ///Admission number And class
                            pw.Padding(padding: const pw.EdgeInsets.all(05),
                              child: pw.Row(
                                  children: [
                                    pw.Container(
                                        width: 220,
                                        height: 25,
                                        child: pw.Center(
                                          child: pw.Text('Class: ${mdl.admittedClass}',
                                              style: pw.TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: pw.FontWeight.bold
                                              )),
                                        )
                                    ),

                                    pw.Container(
                                        width: 250,
                                        height: 25,
                                        child: pw.Center(
                                          child: pw.Text('Admission number: ${mdl.admissionNumber}',
                                              style: pw.TextStyle(
                                                  fontSize: 13,
                                                  fontWeight: pw.FontWeight.bold
                                              )),
                                        )
                                    ),


                                  ]
                              ),
                            ),
                          ]
                      )
                    // child:
                  ),

                  pw.SizedBox(height: 20),

                  pw.Container(
                      height: 300,
                      decoration: pw.BoxDecoration(
                          border: pw.Border.all(
                              color: PdfColors.black
                          )
                      ),
                      child: pw.ListView.builder(
                          itemCount: feeProvider.getFeeByAdmissionNumberList.length,
                          itemBuilder: (context,index){
                            FeeModels mdl= feeProvider.getFeeByAdmissionNumberList[index];
                            DateTime dt =
                            DateTime.fromMillisecondsSinceEpoch(mdl.month!);
                            String month =
                                '${dt.month == 1 ? 'January' : dt.month == 2 ? 'February' : dt.month == 3 ? 'March' : dt.month == 4 ? 'April' : dt.month == 5 ? 'May' : dt.month == 6 ? 'June' : dt.month == 7 ? 'July' : dt.month == 8 ? 'August' : dt.month == 9 ? 'September' : dt.month == 10 ? 'October' : dt.month == 11 ? 'November' : 'December'} ${dt.year}';
                            return pw.Padding(padding: const pw.EdgeInsets.all(05),
                                child: pw.Column(
                                    children:[
                                      pw.Row(
                                          children: [
                                            pw.Container(
                                                width: 150,
                                                height: 25,
                                                child: pw.Center(
                                                  child: pw.Text(month,
                                                      style: pw.TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: pw.FontWeight.bold
                                                      )),
                                                )
                                            ),

                                            pw.Container(
                                                width: 150,
                                                height: 25,
                                                child: pw.Center(
                                                  child: pw.Text(mdl.monthlyFee.toString(),
                                                      style: pw.TextStyle(
                                                          fontSize: 13,
                                                          fontWeight: pw.FontWeight.bold
                                                      )),
                                                )
                                            ),

                                            pw.Container(
                                                width: 150,
                                                height: 25,
                                                child: pw.Center(
                                                  child: pw.Text(mdl.monthlyFeeStatus==0? 'Unpaid': 'Paid',
                                                      style: pw.TextStyle(
                                                          fontSize: 13,
                                                          fontWeight: pw.FontWeight.bold
                                                      )),
                                                )
                                            )


                                          ]
                                      ),
                                    ]
                                )
                            );

                          })
                  ),

                  pw.Container(
                    height: 20,
                    decoration: pw.BoxDecoration(
                        border: pw.Border.all(
                            color: PdfColors.black
                        )
                    ),

                    child: pw.Row(
                        children: [
                          pw.Container(

                              width: 220,
                              height: 25,
                              child: pw.Center(
                                child: pw.Text('Total Fee)',
                                    style: pw.TextStyle(
                                        fontSize: 14,
                                        fontWeight: pw.FontWeight.bold
                                    )),
                              )
                          ),

                          pw.Container(
                              width: 250,
                              height: 25,
                              child: pw.Center(
                                child: pw.Text(feeProvider.totalFee.toString(),
                                    style: pw.TextStyle(
                                        fontSize: 13,
                                        fontWeight: pw.FontWeight.bold
                                    )),
                              )
                          ),


                        ]
                    ),
                  )

                ]
            )
        );
      }
  ));
  await Printing.sharePdf(
      bytes: await doc.save(), filename: 'my-document.pdf');

}








}