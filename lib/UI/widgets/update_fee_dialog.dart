import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';

import '../../core/constant/constant_decoration.dart';
import '../../core/providers/fee_provider.dart';
import 'delete_button.dart';

class UpdateFeeDialog extends StatelessWidget {
  final int admissionNumber,month;
  final String name,mmmonth;


  const UpdateFeeDialog({
    super.key,
    required this.admissionNumber,
    required this.month,
    required this.name, required this.mmmonth,
  });


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Dialog(
      child: Consumer<FeeProvider>(
        builder: (context, feeProvider, child) {
          return Container(
            width: 40 * w,
            height: 25 * h,
            decoration: ConstantDecoration.adminPanelContainer,
            child: Padding(
              padding: EdgeInsets.all(1 * w),
              child: Column(
                children: [
                  Text(
                    'Are You Sure that $name surely add the fee of $mmmonth',
                    style: TextStyle(
                        fontSize: 1.5 * w,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 7 * h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      DeleteButton(
                          text: 'Cancel',
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                      StudentDetailButton(
                        text: 'Yes',
                        onPressed: () {
                          feeProvider.updateMonthLyFeeProvider(admissionNumber, month);
                         feeProvider.getFeeByAdmissionNumberProvider(admissionNumber);
                         feeProvider.getUnpaidFeeProvider(admissionNumber);

                          Navigator.of(context).pop();
                        },
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
