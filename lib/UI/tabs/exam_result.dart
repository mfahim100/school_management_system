import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/core/providers/menu_aap_provider.dart';
import '../widgets/custom_result_container.dart';



class ExamResult extends StatelessWidget {
  const ExamResult({super.key});

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
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomResultContainer(text: '10th', onPressed: ()  {
                          menuAapProvider.setIndexTab(11);
                        },),
                        CustomResultContainer(text: '9th', onPressed: ()  {
                          menuAapProvider.setIndexTab(11);

                        },),
                        CustomResultContainer(text: '8th', onPressed: () {
                          menuAapProvider.setIndexTab(11);

                        },),
                        CustomResultContainer(text: '7th', onPressed: ()  {
                          menuAapProvider.setIndexTab(11);
                        },),
                        CustomResultContainer(text: '6th', onPressed: ()  {
                          menuAapProvider.setIndexTab(11);
                        },),
                        CustomResultContainer(text: '5th', onPressed: ()  {
                          menuAapProvider.setIndexTab(11);
                        },),

                      ]
                  ),
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomResultContainer(text: '4th', onPressed: ()  {
                          menuAapProvider.setIndexTab(11);
                        },),
                        CustomResultContainer(text: '3rd', onPressed: ()  {
                          menuAapProvider.setIndexTab(11);
                        },),
                        CustomResultContainer(text: '2nd', onPressed: ()  {
                          menuAapProvider.setIndexTab(11);
                        },),
                        CustomResultContainer(text: '1st', onPressed: ()  {
                          menuAapProvider.setIndexTab(11);
                        },),
                        CustomResultContainer(text: 'KG', onPressed: ()  {
                          menuAapProvider.setIndexTab(11);
                        },),
                        CustomResultContainer(text: 'Nursery', onPressed: ()  {
                          menuAapProvider.setIndexTab(11);
                        },),

                      ]
                  ),

                ],
              );
            },

          ),
        ),

      ),

    );
  }
}
