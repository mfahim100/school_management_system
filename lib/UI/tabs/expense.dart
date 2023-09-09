import 'package:flutter/material.dart';
import 'package:school_manegment_system/UI/widgets/student_detail_button.dart';
import 'package:school_manegment_system/core/constant/constant_decoration.dart';

class Expense extends StatelessWidget {
  const Expense({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height/100;
    double w = size.width/100;
    return Container(
      height: 80 * h,
      width: 80*w,
      decoration: ConstantDecoration.adminPageLogInContainerDecoration,
      child: Column(
        children: [
          SizedBox(
            width: 80*w,
            height: 06*h,
            child: Row(
              children: [
                Container(
                  width: 06.5*w,
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
            height: 55*h,
            width: 80*w,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white
              )
            ),
            child: ListView.builder(itemBuilder: (context,index){
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
                        child: Text(index.toString(),style: TextStyle(
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
                        child: Text('20/10/2023',style: TextStyle(
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
                        child: Text('this checking adn wheckingchecking chlsdkfskl sadfasfsdf',style: TextStyle(
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
                        child: Text('2000',style: TextStyle(
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
                        child: Text('1000',style: TextStyle(
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
              children: [
                Container(
                  width: 20*w,
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.white
                      )
                  ),
                  child: Center(
                    child: Text('Total',style: TextStyle(
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
                    child: Text('Cash In: 2000',style: TextStyle(
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
                    child: Text('Cash Out: 6000',style: TextStyle(
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
                StudentDetailButton(text: 'Check Today', onPressed: (){}),
                StudentDetailButton(text: 'Check By Month', onPressed: (){}),
                StudentDetailButton(text: 'Cash In', onPressed: (){}),
                StudentDetailButton(text: 'Cash Out', onPressed: (){}),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
