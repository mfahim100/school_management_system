import 'package:flutter/material.dart';
import '../../../core/constant/constant_decoration.dart';
import '../../../core/constant/constant_text_styles.dart';
import '../widgets/custom_button.dart';
import '../widgets/student_text_form_field.dart';

class ShowAllStudent extends StatelessWidget {
  const ShowAllStudent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return SizedBox(
      width: 73 * w,
      height: 80*h,
      child: Column(
        children: [
          Container(
             height: 15*h,
            width: 75*w,
            color: Colors.red,
    ),
          Container(
             height: 15*h,
            width: 75*w,
            color: Colors.grey,
    ),

        ],
      ),

    );

  }
}
