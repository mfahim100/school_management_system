import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/cash_in_dialog.dart';
import 'package:school_manegment_system/UI/widgets/cash_out_dialog.dart';
import 'package:school_manegment_system/UI/widgets/date_expense_dialog.dart';
import 'package:school_manegment_system/UI/widgets/expense_month_selection.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';
import 'package:school_manegment_system/core/constant/constant_decoration.dart';
import 'package:school_manegment_system/core/models/expenseModel.dart';
import 'package:school_manegment_system/core/providers/expense_provider.dart';

class Expense extends StatelessWidget {
  const Expense({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<ExpenseProvider>(context,listen: false).getAllExpenseProvider();
    Provider.of<ExpenseProvider>(context,listen: false).getTotalCashIn();
    Provider.of<ExpenseProvider>(context,listen: false).getTotalCashOut();

    Size size = MediaQuery.of(context).size;
    double h = size.height/100;
    double w = size.width/100;
    return Container(
      height: 80 * h,
      width: 80*w,
      decoration: ConstantDecoration.adminPageLogInContainerDecoration,
      child: Consumer<ExpenseProvider>(builder: ( context, expenseProvider,child) {
        return Column(
          children: [
            SizedBox(
              width: 80*w,
              height: 06*h,
              child: Row(
                children: [
                  Container(
                    width: 06.6*w,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                    child: Center(
                      child: Text('SNo.',style: TextStyle(
                          fontSize: 1.5*w,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    ),
                  ),
                  Container(
                    width: 10*w,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                    child: Center(
                      child: Text('Date',style: TextStyle(
                          fontSize: 1.5*w,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    ),
                  ),
                  Container(
                    width: 30*w,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                    child: Center(
                      child: Text('Description',style: TextStyle(
                          fontSize: 1.5*w,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    ),
                  ),
                  Container(
                    width: 12*w,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                    child: Center(
                      child: Text('Cash In',style: TextStyle(
                          fontSize: 1.5*w,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    ),
                  ),
                  Container(
                    width: 12.3*w,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                    child: Center(
                      child: Text('Cash Out',style: TextStyle(
                          fontSize: 1.5*w,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 55*h,
              width: 80*w,
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.white
                  )
              ),
              child: ListView.builder(
                itemCount: expenseProvider.allExpenseProvider.length,
                  itemBuilder: (context,index){
                  ExpenseModel mdl = expenseProvider.allExpenseProvider[index];
                  DateTime date = DateTime.fromMillisecondsSinceEpoch(mdl.date!);
                  String dt = ('${date.day}-${date.month}-${date.year}');
                    return SizedBox(
                      width: 80*w,
                      height: 12*h,
                      child: Row(
                        children: [
                          Container(
                            width: 06.5*w,
                            decoration: const BoxDecoration(
                                border: Border(
                                  left: BorderSide(
                                      color: Colors.white
                                  ),

                                )
                            ),
                            child: Center(
                              child: Text(mdl.id.toString(),style: TextStyle(
                                  fontSize: 1.5*w,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                            ),
                          ),
                          Container(
                            width: 10*w,
                            decoration: const BoxDecoration(
                                border: Border(
                                  left: BorderSide(
                                      color: Colors.white
                                  ),

                                )
                            ),
                            child: Center(
                              child: Text(dt,style: TextStyle(
                                  fontSize: 1.5*w,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                            ),
                          ),
                          Container(
                            width: 30*w,
                            decoration: const BoxDecoration(
                                border: Border(
                                  left: BorderSide(
                                      color: Colors.white
                                  ),

                                )
                            ),
                            child: Center(
                              child: Text(mdl.description!,style: TextStyle(
                                  fontSize: 1.5*w,
                                  color: Colors.white
                              ),),
                            ),
                          ),
                          Container(
                            width: 12*w,
                            decoration: const BoxDecoration(
                                border: Border(
                                  left: BorderSide(
                                      color: Colors.white
                                  ),

                                )
                            ),
                            child: Center(
                              child: Text(mdl.cashIn == 0 ? '':mdl.cashIn.toString(),style: TextStyle(
                                  fontSize: 1.5*w,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                            ),
                          ),
                          Container(
                            width: 12*w,
                            decoration: const BoxDecoration(
                                border: Border(
                                  left: BorderSide(
                                      color: Colors.white
                                  ),


                                )
                            ),
                            child: Center(
                              child: Text(mdl.cashOut==0? '' : mdl.cashOut.toString(),style: TextStyle(
                                  fontSize: 1.5*w,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(height: 2*h,),
            SizedBox(
              width: 60*w,
              height: 06*h,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(width: 10*w,),

                  Container(
                    width: 20*w,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                    child: Center(
                      child: Text('Total Cash In: ${expenseProvider.totalCashIn}',style: TextStyle(
                          fontSize: 1.5*w,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    ),
                  ),
                  Container(
                    width: 20*w,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.white
                        )
                    ),
                    child: Center(
                      child: Text('Total Cash Out: ${expenseProvider.totalCashOut}',style: TextStyle(
                          fontSize: 1.5*w,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(height: 2*h,),
            SizedBox(
              width: 60*w,
              height: 06*h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  StudentDetailButton(text: 'Check Today', onPressed: (){
                    expenseProvider.getExpenseByDateProvider();
                    // expenseProvider.getDateTotalCashInProvider();
                    // expenseProvider.getDateTotalCashOutProvider();
                    showDialog(
                        barrierDismissible: false,
                        context: context, builder: (context){
                      return const DateExpenseDialog();
                    });

                  }),
                  StudentDetailButton(text: 'Check By Month', onPressed: (){
                    showDialog(
                        barrierDismissible: false,
                        context: (context), builder: (context){
                      return const ExpenseMonthSelection();
                    });
                  }),
                  StudentDetailButton(
                      text: 'Cash In', onPressed: (){
                    showDialog(
                        barrierDismissible: false,
                        context: (context), builder: (context){
                      return const CashInDialog();
                    });

                  }),
                  StudentDetailButton(text: 'Cash Out', onPressed: (){
                    showDialog(
                        barrierDismissible: false,
                        context: (context), builder: (context){
                      return const CashOutDialog();
                    });


                  }),
                ],
              ),
            ),

          ],
        );
      },

      ),
    );
  }
}
