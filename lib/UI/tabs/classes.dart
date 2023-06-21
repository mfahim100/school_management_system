import 'package:flutter/material.dart';
import 'package:school_manegment_system/UI/widgets/custom_class_container.dart';


class Classes extends StatelessWidget {
  const Classes({Key? key}) : super(key: key);

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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                CustomClassContainer(text: '10th', onEdit: (){}, onDelete: (){}),
                                CustomClassContainer(text: '9th', onEdit: (){}, onDelete: (){}),
                                CustomClassContainer(text: '8th', onEdit: (){}, onDelete: (){}),
                                CustomClassContainer(text: '7th', onEdit: (){}, onDelete: (){}),
                                CustomClassContainer(text: '6th', onEdit: (){}, onDelete: (){}),
                                CustomClassContainer(text: '5th', onEdit: (){}, onDelete: (){}),
                              ]
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CustomClassContainer(text: '4th', onEdit: (){}, onDelete: (){}),
                                  CustomClassContainer(text: '3rd', onEdit: (){}, onDelete: (){}),
                                  CustomClassContainer(text: '2nd', onEdit: (){}, onDelete: (){}),
                                  CustomClassContainer(text: 'Ist', onEdit: (){}, onDelete: (){}),
                                  CustomClassContainer(text: 'KG', onEdit: (){}, onDelete: (){}),
                                  CustomClassContainer(text: 'Nursury', onEdit: (){}, onDelete: (){}),
                                ]
                            ),

                          ],
                        ),
                      ),

        ),

      );

  }
}
