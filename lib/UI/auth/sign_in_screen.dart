import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/UI/home/home_screen.dart';
import 'package:school_manegment_system/core/constant/constant_text.dart';
import 'package:school_manegment_system/core/providers/auth_provider.dart';
import '../../core/constant/constant_decoration.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_text_filed.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = size.height / 100;
    double w = size.width / 100;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Consumer<AuthProvider>(builder: (context, authProvider,child) {
          return SizedBox(
              height: h * 100,
              width: w * 100,
              child: Row(
                children: [
                  Container(
                    height: 100 * h,
                    width: 33 * w,
                    decoration:
                    ConstantDecoration.adminPageLogInContainerDecoration,
                    child: Column(
                      children: [
                        SizedBox(
                          height: h * 2,
                        ),
                        Center(
                          child: Text('Admin Panel',
                              style: GoogleFonts.satisfy(
                                fontSize: 08 * h,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                        ),
                        SizedBox(
                          height: h * 10,
                        ),
                        Container(
                          height: 55 * h,
                          width: 30 * w,
                          decoration: ConstantDecoration.adminPanelContainer,
                          child: Form(
                            key: authProvider.authKey,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: h * 1,
                                ),
                                Text('Sign In',
                                    style: GoogleFonts.lato(
                                      fontSize: 07 * h,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    )),
                                SizedBox(
                                  height: h * 2,
                                ),
                                SizedBox(
                                    width: w * 28,
                                    height: h*08,
                                    child: CustomTextField(
                                      controller: authProvider.userNameController,
                                      validator: authProvider.userNameValidator,
                                      hintText: 'User Name',
                                      labelText: '',
                                    )),
                                SizedBox(
                                  height: h * 2,

                                ),
                                SizedBox(
                                  width: w * 28,
                                  height: h* 08,
                                  child: CustomTextField(
                                    controller: authProvider.passwordController,
                                      validator: authProvider.passwordValidator,
                                      obscureText: true,
                                      hintText: 'Password',
                                      labelText: ''),
                                ),
                                SizedBox(
                                  height: h * 2,
                                ),
                                SizedBox(
                                  width: w * 28,
                                  height: h*08,
                                  child: CustomButton(text: 'Sign In', onPressed: () {
                                    if(authProvider.authKey.currentState!.validate()){
                                Navigator.of(context).push(MaterialPageRoute(builder: (builder){
                                return const HomeScreen();

                                }));
                                authProvider.clearController();
                                    }
                                  }
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    height: 100 * h,
                    width: 1 * w,
                    color: Colors.black,
                  ),

                  Container(
                    height: 100 * h,
                    width: 66 * w,
                    decoration: ConstantDecoration.mainContainerDecoration,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 15*h,
                          width: 60*w,
                          child: Center(
                            child: Text(ConstantText.schoolName,
                                style: GoogleFonts.anekBangla(
                                  fontSize: 04 * h,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        Container(
                          height: 80*h,
                          width: 62*w,
                          decoration: ConstantDecoration.mainContainerDecoration,
                          child: const Image(image: AssetImage(''),),
                        )
                      ],
                    ),
                  ),
                ],
              ));
        },)
      ),
    );
  }
}
