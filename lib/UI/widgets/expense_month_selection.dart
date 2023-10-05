import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/monthly_expense_dialog.dart';
import 'package:school_manegment_system/core/providers/expense_provider.dart';

import '../../core/constant/constant_decoration.dart';
import '../../core/constant/drop_down_menu_constant.dart';
import 'attendance_of_selected_month.dart';
import 'custom_button.dart';
import 'drop_down_menu.dart';

class ExpenseMonthSelection extends StatelessWidget {
  const ExpenseMonthSelection({super.key});
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Dialog(
      child: Consumer<ExpenseProvider>(
        builder: (context, expenseProvider,child) {
          return Container(
            decoration: ConstantDecoration.adminPageLogInContainerDecoration,
            width: 30*w,
            height: 35*h,
            child: Padding(
              padding:  EdgeInsets.all(1.5*w),
              child: Column(
                children: [

                  CustomDropDownMenu(text: 'Please Select Month', items: DropDownMenuConstant.monthList, onChanged:  (txt) =>
                      expenseProvider.setMonth(txt!),),

                  CustomButton(text: 'Submit', onPressed: () async {
                   expenseProvider.getExpenseByMonthProvider();
                    showDialog(
                        barrierDismissible: false,
                        context: (context), builder: (context){
                      return const MonthlyExpenseDialog();
                    });
                   await expenseProvider.getExpenseByMonthProvider();
                   await expenseProvider.getMonthlyTotalCashInProvider();
                   await expenseProvider.getTotalMonthLyCashOutProvider();

                  }),

                  SizedBox(height: 1.5*h,),

                  CustomButton(text: 'Cancel', onPressed: (){
                    Navigator.of(context).pop();
                  })


                ],
              ),
            ),
          );

        },
      ),
    );
  }
  }

