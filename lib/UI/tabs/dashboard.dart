import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/constant/constant_decoration.dart';
import '../../core/constant/constant_text.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return  Container(
      width: 73 * w,
      decoration: ConstantDecoration
          .adminPageLogInContainerDecoration,
      child: Center(
        child: Text(
          'DashBoard',
          style: GoogleFonts.satisfy(
            fontSize: 23,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
