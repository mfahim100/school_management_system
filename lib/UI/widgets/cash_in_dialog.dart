import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/cash_description_textarea.dart';
import 'package:school_manegment_system/UI/widgets/delete_button.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';
import 'package:school_manegment_system/UI/widgets/student_text_form_field.dart';
import 'package:school_manegment_system/core/constant/constant_decoration.dart';
import 'package:school_manegment_system/core/providers/expense_provider.dart';

class CashInDialog extends StatelessWidget {
  const CashInDialog({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Dialog(child: Consumer<ExpenseProvider>(
      builder: (context, expenseProvider, child) {
        return Container(
            width: 40 * w,
            height: 52 * h,
            decoration: ConstantDecoration.adminPageLogInContainerDecoration,
            child: Form(
              key: expenseProvider.expenseFromKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 1 * h,
                  ),
                  Text(
                    'Cash In',
                    style: TextStyle(
                        fontSize: 2 * w,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 2 * h,
                  ),
                  SizedBox(
                      width: 38 * w,
                      child: CashDescriptionTextArea(
                        controller: expenseProvider.descriptionController,
                        validator: expenseProvider.descriptionValidator,
                        hintText: 'Description',
                        labelText: 'Description',
                      )),
                  SizedBox(
                    height: 2 * h,
                  ),
                  SizedBox(
                      width: 38 * w,
                      child: StudentTextFormField(
                        validator: expenseProvider.cashInValidator,
                        controller: expenseProvider.cashInController,
                        hintText: 'Amount',
                        labelText: 'Amount',
                      )),
                  SizedBox(
                    height: 2 * h,
                  ),
                  SizedBox(
                    width: 38 * w,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        StudentDetailButton(text: 'Cash In', onPressed: () async {
                          // await expenseProvider.getAllExpenseProvider();
                          // await expenseProvider.getTotalCashIn();
                          if(expenseProvider.expenseFromKey.currentState!.validate()){
                            expenseProvider.cashIn();
                          }

                        }),
                        DeleteButton(
                            text: 'Cancel',
                            onPressed: () {
                              Navigator.of(context).pop();
                            })
                      ],
                    ),
                  )
                ],
              ),
            ));
      },
    ));
  }
}
