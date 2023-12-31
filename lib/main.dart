import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school_manegment_system/core/providers/attendance_provider.dart';
import 'package:school_manegment_system/core/providers/auth_provider.dart';
import 'package:school_manegment_system/core/providers/dashboard_provider.dart';
import 'package:school_manegment_system/core/providers/expense_provider.dart';
import 'package:school_manegment_system/core/providers/fee_provider.dart';
import 'package:school_manegment_system/core/providers/menu_aap_provider.dart';
import 'package:school_manegment_system/core/providers/printing_provider.dart';
import 'package:school_manegment_system/core/providers/result_provider.dart';
import 'package:school_manegment_system/core/providers/student_provider.dart';
import 'package:school_manegment_system/core/providers/update_student_provider.dart';
import 'UI/auth/sign_in_screen.dart';
import 'core/providers/student_form_provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> MenuAapProvider()),
        ChangeNotifierProvider(create: (_)=> StudentProvider()),
        ChangeNotifierProvider(create: (_)=> StudentFormProvider()),
        ChangeNotifierProvider(create: (_)=> UpdateStudentProvider()),
        ChangeNotifierProvider(create: (_)=> AttendanceProvider()),
        ChangeNotifierProvider(create: (_)=> ResultProvider()),
        ChangeNotifierProvider(create: (_)=> FeeProvider()),
        ChangeNotifierProvider(create: (_)=> FeeProvider()),
        ChangeNotifierProvider(create: (_)=> DashBoardProvider()),
        ChangeNotifierProvider(create: (_)=> PrintingProvider()),
        ChangeNotifierProvider(create: (_)=> AuthProvider()),
        ChangeNotifierProvider(create: (_)=> ExpenseProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:
          // const AttendanceResult()
          // CheckingForm()
        // CalenderChecking()
        // DatePicker(),
          // const StudentAddForm()
        // const ClassesWithStudents()
          // const Classes(),
        // const HomeScreen(),
       const SignInScreen(),
      ),
    );
  }
}
