import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';
import 'package:school_manegment_system/core/models/StudentsModels.dart';
import 'package:school_manegment_system/core/providers/printing_provider.dart';
import '../../core/constant/constant_decoration.dart';
import '../../core/models/Feemodel.dart';
import '../../core/models/all_class_fee_model.dart';
import '../../core/providers/fee_provider.dart';
import 'delete_button.dart';
import 'fee_history_row.dart';


class ShowAllClassFeeDialog extends StatelessWidget {

  const ShowAllClassFeeDialog({super.key});

  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Dialog(
      child: Consumer<FeeProvider>(
        builder: (context, feeProvider, child) {
          return Container(
            decoration: ConstantDecoration.adminPageLogInContainerDecoration,
            width: 55 * w,
            height: 95 * h,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(1 * w),
                  child: SizedBox(
                    height: 80 * h,
                    child: ListView.builder(
                        itemCount: feeProvider.allClassFee.length,
                        itemBuilder: (context, index) {
                          AllClassFeeModel allStd = feeProvider.allClassFee[index];
                          StudentsModels stmdl = allStd.studentsModels!;
                          return Padding(
                            padding: EdgeInsets.all(1 * w),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 18 * h,
                                  width: 48 * w,
                                ),
                                SizedBox(
                                  height: 0.5 * h,
                                ),
                                SizedBox(
                                  height: 12 * h,
                                  width: 65 * w,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 6 * h,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 23 * w,
                                              child: Text(
                                                'Name: ${stmdl.name}',
                                                style: TextStyle(
                                                    fontSize: 1.5 * w,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 28 * w,
                                              child: Text(
                                                'Father Name: ${stmdl.fatherName}',
                                                style: TextStyle(
                                                    fontSize: 1.4 * w,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        height: 6 * h,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 23 * w,
                                              child: Text(
                                                'Admission Number: ${stmdl.admissionNumber}',
                                                style: TextStyle(
                                                    fontSize: 1.5 * w,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 28 * w,
                                              child: Text(
                                                'Class : ${stmdl.admittedClass}',
                                                style: TextStyle(
                                                    fontSize: 1.4 * w,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: .5 * w,
                                ),
                                SizedBox(
                                  height: 05 * h,
                                  width: 17 * w,
                                  child: Center(
                                    child: Text(
                                      'Fee History',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 1.7 * w,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(
                                        left: 2 * w, right: 2 * w),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 0.5 * w,
                                        ),
                                        Container(
                                            height: 40 * h,
                                            width: 55 * w,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: Colors.black)),
                                            child: ListView.builder(
                                              itemCount: allStd.feeModel!.length,
                                              itemBuilder: ( context, index) {
                                                FeeModels mdl = allStd.feeModel![index];
                                                DateTime dt = DateTime.fromMillisecondsSinceEpoch(mdl.month!);
                                                String month =
                                                    '${dt.month == 1 ? 'January' : dt.month == 2 ? 'February' : dt.month == 3 ? 'March' : dt.month == 4 ? 'April' : dt.month == 5 ? 'May' : dt.month == 6 ? 'June' : dt.month == 7 ? 'July' : dt.month == 8 ? 'August' : dt.month == 9 ? 'September' : dt.month == 10 ? 'October' : dt.month == 11 ? 'November' : 'December'} ${dt.year},';
                                                return Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 2 * w,
                                                        right: 2 * w),
                                                    child: Column(
                                                      children: [
                                                        SizedBox(
                                                          height: 0.5 * w,
                                                        ),
                                                        FeeHistoryRow(
                                                            monthName: month,
                                                            monthlyFee: mdl
                                                                .monthlyFee!.toString(),
                                                            status:
                                                                mdl.monthlyFeeStatus == 0
                                                                    ? 'Unpaid'
                                                                    : 'Paid',
                                                            onPressed: () {}),
                                                        SizedBox(
                                                          height: 0.5 * w,
                                                        ),
                                                      ],
                                                    ));
                                              },
                                            )),
                                        SizedBox(
                                          height: 0.5 * w,
                                        ),
                                        Container(
                                          height: 4.5 * h,
                                          width: 55 * w,
                                          decoration: BoxDecoration(
                                              border: Border.all(color: Colors.black)),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                            children: [
                                              SizedBox(
                                                width: 15 * w,
                                                child: Text(
                                                  'Total Fee: ',
                                                  style: TextStyle(
                                                      fontSize: 1.3 * w,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 15 * w,
                                                child: Text(
                                                  allStd.totalFee.toString(),
                                                  style: TextStyle(
                                                      fontSize: 1.3 * w,
                                                      fontWeight: FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )),
                                SizedBox(
                                  height: 3 * h,
                                ),
                                Container(
                                  height: 1 * h,
                                  width: 65 * w,
                                  color: Colors.black,
                                )
                              ],
                            ),
                          );
                        }),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                        height: 5 * h,
                        width: 15 * w,
                        child: Consumer<PrintingProvider>(builder: ( context, printingProvider,child) {
                          return StudentDetailButton(
                              text: 'Print',
                              onPressed: () async {
                         printingProvider.printAllClassFeeSlips(feeProvider);
                              }
                          );
                        },)),
                    SizedBox(
                      height: 5 * h,
                      width: 15 * w,
                      child: DeleteButton(
                          text: 'Cancel',
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
