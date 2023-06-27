import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/widgets/custom_result_container.dart';
import 'package:school_manegment_system/core/providers/menu_aap_provider.dart';


class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return SizedBox(
      height: 80*h,
      width: 70*w,
      child: Padding(
        padding:  EdgeInsets.all(2*w),
       child: Consumer<MenuAapProvider>(
          builder: (context, menuAapProvider, child){
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomResultContainer(text: 'Attendance Result', onPressed: (){
                  menuAapProvider.setIndexTab(9);
                }),
                CustomResultContainer(text: 'Exam Result', onPressed: (){
                  menuAapProvider.setIndexTab(7);
                }),
              ],
            );
          }

      ),
      ),
    );

  }
}
