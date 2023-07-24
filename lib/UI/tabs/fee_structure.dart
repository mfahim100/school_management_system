import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/core/providers/fee_provider.dart';
import 'package:school_manegment_system/core/providers/menu_aap_provider.dart';
import '../widgets/custom_fee_container.dart';

class FeeStructure extends StatelessWidget {
  const FeeStructure({super.key});

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
            builder: (context, menuAapProvider,child) {
              return Consumer<FeeProvider>(
                builder: (context, feeProvider,child) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomFeeContainer(text: '10th', onPressed: ()  {
                              feeProvider.getStudentByClassProvider('10th');
                              menuAapProvider.setIndexTab(10);
                            },),
                            CustomFeeContainer(text: '9th', onPressed: ()  {
                              feeProvider.getStudentByClassProvider('9th');
                              menuAapProvider.setIndexTab(10);
                            },),
                            CustomFeeContainer(text: '8th', onPressed: () {
                              feeProvider.getStudentByClassProvider('8th');
                              menuAapProvider.setIndexTab(10);
                            },),
                            CustomFeeContainer(text: '7th', onPressed: ()  {
                              feeProvider.getStudentByClassProvider('7th');
                              menuAapProvider.setIndexTab(10);
                            },),
                            CustomFeeContainer(text: '6th', onPressed: ()  {
                              feeProvider.getStudentByClassProvider('6th');
                              menuAapProvider.setIndexTab(10);
                            },),
                            CustomFeeContainer(text: '5th', onPressed: ()  {
                              feeProvider.getStudentByClassProvider('5th');
                              menuAapProvider.setIndexTab(10);
                            },),

                          ]
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomFeeContainer(text: '4th', onPressed: ()  {
                              feeProvider.getStudentByClassProvider('4th');
                              menuAapProvider.setIndexTab(10);
                            },),
                            CustomFeeContainer(text: '3rd', onPressed: ()  {
                              feeProvider.getStudentByClassProvider('3rd');
                              menuAapProvider.setIndexTab(10);
                            },),
                            CustomFeeContainer(text: '2nd', onPressed: ()  {
                              feeProvider.getStudentByClassProvider('2nd');
                              menuAapProvider.setIndexTab(10);
                            },),
                            CustomFeeContainer(text: '1st', onPressed: ()  {
                              menuAapProvider.setIndexTab(10);
                            },),
                            CustomFeeContainer(text: 'KG', onPressed: ()  {
                              feeProvider.getStudentByClassProvider('K.G');
                              menuAapProvider.setIndexTab(10);
                            },),
                            CustomFeeContainer(text: 'Nursery', onPressed: ()  {
                              feeProvider.getStudentByClassProvider('Nursury');
                              menuAapProvider.setIndexTab(10);
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
