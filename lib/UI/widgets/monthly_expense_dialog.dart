import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/delete_button.dart';

import '../../core/constant/constant_decoration.dart';
import '../../core/models/expenseModel.dart';
import '../../core/providers/expense_provider.dart';

class MonthlyExpenseDialog extends StatelessWidget {
  const MonthlyExpenseDialog({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<ExpenseProvider>(context,listen: false).getExpenseByMonthProvider();
    Provider.of<ExpenseProvider>(context,listen: false).getMonthlyTotalCashInProvider();
    Provider.of<ExpenseProvider>(context,listen: false).getTotalMonthLyCashOutProvider();
    // Provider.of<ExpenseProvider>(context,listen: false).getTotalExpenseProvider();

    Size size = MediaQuery.of(context).size;
    double h = size.height/100;
    double w = size.width/100;
    return Dialog(
      child: Container(
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
                      width: 12*w,
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
                height: 60*h,
                width: 80*w,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white
                    )
                ),
                child: expenseProvider.getExpenseByMonth.isEmpty ?  Center(
                  child: Text('No data',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 5*w,
                  ),) ,
                ):
                ListView.builder(
                    itemCount: expenseProvider.getExpenseByMonth.length,
                    itemBuilder: (context,index){
                      ExpenseModel mdl = expenseProvider.getExpenseByMonth[index];
                      DateTime date = DateTime.fromMillisecondsSinceEpoch(mdl.date!);
                      String dt = ('${date.day}-${date.month}-${date.year}');
                      return  SizedBox(
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
                                    right:BorderSide(
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
              SizedBox(height: 1*h,),
              SizedBox(
                width: 60*w,
                height: 05*h,
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
                        child: Text('Total Cash In: ${expenseProvider.totalDailyCashIn}',style: TextStyle(
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
                        child: Text('Total Cash Out: ${expenseProvider.totalDailyCashOut}',style: TextStyle(
                            fontSize: 1.5*w,
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 1*h,),

              SizedBox(
                width: 40*w,
                child: DeleteButton(text: 'Cancel', onPressed: (){
                  Navigator.of(context).pop();
                },),
              )




            ],
          );
        },

        ),
      ),
    );
  }
}
