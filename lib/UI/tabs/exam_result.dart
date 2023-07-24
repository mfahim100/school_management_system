import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/core/providers/menu_aap_provider.dart';
import '../../core/providers/result_provider.dart';
import '../widgets/custom_result_container.dart';



class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return SizedBox(
      width: 73 * w,
      child: SizedBox(
        height: 80*h,
        width: 70*w,
        child: Padding(
          padding:  EdgeInsets.all(2*w),
          child: Consumer<MenuAapProvider>(
            builder: (BuildContext context, menuAapProvider, Widget? child) {
              return Consumer<ResultProvider>(
                builder: (context, resultProvider,child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomResultContainer(text: '10th', onPressed: (){
                              resultProvider.getStudentByClassProvider('10th');
                              menuAapProvider.setIndexTab(11);
                            },),
                            CustomResultContainer(text: '9th', onPressed: ()  {
                              resultProvider.getStudentByClassProvider('9th');
                              menuAapProvider.setIndexTab(11);
                            },),
                            CustomResultContainer(text: '8th', onPressed: () {
                              resultProvider.getStudentByClassProvider('8th');
                              menuAapProvider.setIndexTab(11);
                            },),
                            CustomResultContainer(text: '7th', onPressed: ()  {
                              resultProvider.getStudentByClassProvider('7th');
                              menuAapProvider.setIndexTab(11);
                            },),
                            CustomResultContainer(text: '6th', onPressed: ()  {
                              resultProvider.getStudentByClassProvider('6th');
                              menuAapProvider.setIndexTab(11);
                            },),
                            CustomResultContainer(text: '5th', onPressed: ()  {
                              resultProvider.getStudentByClassProvider('5th');
                              menuAapProvider.setIndexTab(11);
                            },),

                          ]
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomResultContainer(text: '4th', onPressed: ()  {
                              resultProvider.getStudentByClassProvider('4th');
                              menuAapProvider.setIndexTab(11);
                            },),
                            CustomResultContainer(text: '3rd', onPressed: ()  {
                              resultProvider.getStudentByClassProvider('3rd');
                              menuAapProvider.setIndexTab(11);
                            },),
                            CustomResultContainer(text: '2nd', onPressed: ()  {
                              resultProvider.getStudentByClassProvider('2nd');
                              menuAapProvider.setIndexTab(11);
                            },),
                            CustomResultContainer(text: '1st', onPressed: ()  {
                              resultProvider.getStudentByClassProvider('1st');
                              menuAapProvider.setIndexTab(11);
                            },),
                            CustomResultContainer(text: 'KG', onPressed: ()  {
                              resultProvider.getStudentByClassProvider('K.G');
                              menuAapProvider.setIndexTab(11);
                            },),
                            CustomResultContainer(text: 'Nursery', onPressed: ()  {
                              resultProvider.getStudentByClassProvider('Nursery');
                              menuAapProvider.setIndexTab(11);
                            },),

                          ]
                      ),

                    ],
                  );
                },

              );
            },

          ),
        ),

      ),

    );
  }
}
